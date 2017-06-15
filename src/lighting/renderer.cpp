#include "renderer.hpp"

using namespace glm;
using namespace std;

Renderer::Renderer(shared_ptr<Scene> scene, bool keep_log) :
   scene(scene), keep_log(keep_log)
{
   lighting_mode = scene->use_alt_brdf ? COOK_TORRANCE : BLINN_PHONG;

   this->gi_samples = scene->gi_samples;
   this->gi_ratio = scene->gi_ratio;
   this->gi_bounces = scene->gi_bounces;
}

/* HELPER FUNCTIONS FOR THE LIGHTING EQUATIONS */

float normalized_distribution(float h_dot_n, float roughness) {
   float alpha = roughness * roughness;
   float exp = (2.0f / (alpha * alpha)) - 2.0f;
   float denom = M_PI * alpha * alpha;
   return pow(h_dot_n, exp) / denom;
}

float geometric_attenuation(float h_dot_n, float n_dot_v, float n_dot_l,
 float v_dot_h) {
   if (v_dot_h == 0) return 1.0f;
   float shadowed = 2 * h_dot_n * n_dot_l / v_dot_h;
   float occluded = 2 * h_dot_n * n_dot_v / v_dot_h;
   return glm::min<float>(1.0f, glm::min<float>(shadowed, occluded));
}

float fresnel(float ior, float v_dot_h) {
   float F_0 = pow(ior - 1.0f, 2) / pow(ior + 1.0f, 2);
   return F_0 + (1.0f - F_0) * pow(1.0f - v_dot_h, 5);
}

vec3 bp_diffuse_for_light(float k_d, vec3 N, vec3 L, vec3 lc, vec3 obj_color) {
   float N_dot_L = glm::max(0.0f, dot(N, L));
   return k_d * N_dot_L * lc * obj_color;
}

vec3 bp_specular_for_light(float k_s, float shine, vec3 H, vec3 N, vec3 lc,
 vec3 obj_color) {
   float H_dot_N = glm::max(0.0f, dot(H, N));
   return k_s * pow(H_dot_N, shine) * lc * obj_color;
}

vec3 ct_diffuse_for_light(float d, float r_d, vec3 N, vec3 L, vec3 lc,
 vec3 obj_color) {
   float N_dot_L = glm::max(0.0f, dot(N, L));
   return d * r_d * N_dot_L * lc * obj_color;
}

vec3 ct_specular_for_light(float s, float roughness, float ior, vec3 N, vec3 V,
 vec3 L, vec3 H, vec3 lc, vec3 obj_color) {
   float H_dot_N = glm::max(0.0f, dot(H, N));
   float N_dot_V = glm::max(0.0f, dot(N, V));
   float N_dot_L = glm::max(0.0f, dot(N, L));
   float V_dot_H = glm::max(0.0f, dot(V, H));

   float D = normalized_distribution(H_dot_N, roughness);
   float G = geometric_attenuation(H_dot_N, N_dot_V, N_dot_L, V_dot_H);
   float F = fresnel(ior, V_dot_H);

   float r_s = (D * G * F) / (4.0f * N_dot_V);

   return s * r_s * lc * obj_color;
}

float schlicks_approximation(shared_ptr<Intersection> intersection) {
   float ior = intersection->target->finish.ior;
   vec3 n = intersection->normal;
   vec3 v = normalize(intersection->ray->source -
    intersection->intersection_point);

   float F_0 = pow((ior - 1.f) / (ior + 1.f), 2);
   float dot_prod = dot(n, v);
   if (dot_prod < 0) dot_prod *= -1;
   float result = F_0 + (1.0f - F_0) * pow(1.0f - dot_prod, 5);
   return result;
}

vec3 beers_law(vec3 color, float distance) {
   vec3 absorbance = 0.15f * -distance * (1.f - color);
   vec3 result = exp(absorbance);
   return result;
}

RGBColor Renderer::monte_carlo_gi(shared_ptr<Intersection> intersection,
      const int count, const int recursion_level) {

   vec3 up = vec3(0, 0, 1);
   vec3 normal = intersection->normal;
   float angle = acos(dot(up, normal));
   vec3 axis = cross(up, normal);
   mat4 rot_matrix = mat4(1.0f);
   if (axis.x != 0 || axis.y != 0 || axis.z != 0) {
      rot_matrix = glm::rotate(mat4(1.0f), angle, axis);
   }

   RGBColor ambient = RGBColor(0, 0, 0);
   int hit_count = 0;

   vector<vec3> random_points = get_hemisphere_points(count);
   for (vec3 random_point : random_points) {
      vec3 cast_dir = vec3(rot_matrix * vec4(random_point, 1.0f));
      vec3 start_point = intersection->intersection_point + 0.001f * cast_dir;
      shared_ptr<Ray> cast_ray = make_shared<Ray>(start_point, cast_dir, 0, -1);

      shared_ptr<Path> cast_result =
         recursive_render_ray(cast_ray, recursion_level - 1);

      RGBColor color = cast_result->color;

      if (cast_result->hit) {
         ++hit_count;
      }

      if (this->scene->use_gi) {
         color /= (float)count;
      }
      float weight = dot(cast_dir, normal);
      ambient += color * weight;
   }

   ambient.saturate();
   if (this->scene->use_ao && hit_count) {
      ambient /= (float)hit_count;
   }
   return ambient;
}

/* END HELPER LIGHTING FUNCTIONS */

bool Renderer::in_shadow(shared_ptr<Intersection> intersection,
      shared_ptr<Light> light) {
   vec3 L = light->position - intersection->intersection_point;

   float shadow_ray_len = length(light->position -
      intersection->intersection_point);

   shared_ptr<Ray> shadow_ray = make_shared<Ray>(
    intersection->intersection_point, L, 0.001f, shadow_ray_len);
   shared_ptr<Intersection> shadow_intersection = scene->cast_ray(
    shadow_ray);

   return shadow_intersection != nullptr;
}

RGBColor Renderer::local_shading(shared_ptr<Intersection> intersection,
      int gi_count, vec3 &ambient, vec3 &diffuse, vec3 &specular,
      const int recursion_level) {

   // alias some common properties to save typing
   float k_a = intersection->target->finish.ambient;
   float k_d = intersection->target->finish.diffuse;
   float k_s = intersection->target->finish.specular;
   float roughness = intersection->target->finish.roughness;
   float shine = (2.0f / pow(roughness, 2)) - 2.0f;
   float ior = intersection->target->finish.ior;
   float s = intersection->target->finish.metallic;
   float d = 1 - s;
   vec3 obj_color = intersection->target->pigment.color.to_vec3();

   // 3 lighting components
   ambient = k_a * obj_color;
   if ((scene->use_gi || scene->use_ao) && gi_count >= 1) {
      ambient = monte_carlo_gi(intersection, gi_count, recursion_level).to_vec3();
   }
   diffuse = vec3(0, 0, 0);
   specular = vec3(0, 0, 0);

   // important vectors
   vec3 V = normalize(intersection->ray->source -
      intersection->intersection_point);
   vec3 N = intersection->normal;

   // determine the diffuse/specular from each light source
   for (shared_ptr<Light> light : scene->lights) {

      // not for shadows!
      if (USE_SHADOWS && in_shadow(intersection, light)) {
         continue;
      }

      // important vectors
      vec3 L = normalize(light->position - intersection->intersection_point);
      vec3 H = normalize(V + L);
      vec3 lc = light->color.to_vec3();

      // accumulate diffuse and specular
      switch (lighting_mode) {

       case BLINN_PHONG:
         diffuse += bp_diffuse_for_light(k_d, N, L, lc, obj_color);
         specular += bp_specular_for_light(k_s, shine, H, N, lc,
          obj_color);
         break;

       case COOK_TORRANCE:
         diffuse += ct_diffuse_for_light(d, k_d, N, L, lc, obj_color);
         specular += ct_specular_for_light(s, roughness, ior, N, V, L, H, lc,
          obj_color);
         break;

      }
   }

   // combine the color components
   return RGBColor(ambient + diffuse + specular);
}

shared_ptr<Path> Renderer::render_ray(shared_ptr<Ray> ray) {
   return recursive_render_ray(ray, MAX_LIGHT_BOUNCES);
}

shared_ptr<Path> Renderer::render_ray(vec3 source, vec3 destination) {
   shared_ptr<Ray> ray = make_shared<Ray>(source, destination - source,
      0, -1);
   return recursive_render_ray(ray, MAX_LIGHT_BOUNCES);
}

shared_ptr<Path> Renderer::recursive_render_ray(shared_ptr<Ray> ray,
      int recursion_level) {

   shared_ptr<Path> result = make_shared<Path>();
   if (keep_log) result->log.push_back(ray_string(ray));

   if (recursion_level <= 0) {
      if (keep_log)
         result->log.push_back(string("Ignoring. Recursion too deep."));
      return result;
   }

   // prepare some data needed for lighting
   shared_ptr<Intersection> intersection = scene->cast_ray(ray);
   if (intersection == NULL) {
      if (keep_log) result->log.push_back("No intersection.");
      return result;
   }
   if (keep_log) {
      result->log.push_back(transformed_ray_string(intersection->obj_ray));
      result->log.push_back(hit_obj_string(intersection->target));
      result->log.push_back(intersection_string(intersection));
      result->log.push_back(normal_string(intersection->normal));
   }
   result->distance = length(intersection->intersection_point - ray->source);

   // start with the local shading
   vec3 loc_a, loc_d, loc_s;
   int gi_count = 0;
   int bounce = MAX_LIGHT_BOUNCES - recursion_level;
   if ((scene->use_gi || scene->use_ao) && bounce < gi_bounces) {
      gi_count = (int)((float)gi_samples / pow(gi_ratio, bounce));
   }
   RGBColor local_color = local_shading(intersection, gi_count, loc_a, loc_d,
      loc_s, recursion_level);

   // calculate the filter values
   float filter = intersection->target->pigment.filter;
   float reflection = intersection->target->finish.reflection;
   float fresnel_reflectance = scene->use_fresnel ?
    schlicks_approximation(intersection) : 0.0f;

   float local_contrib = (1.0f - filter) * (1.0f - reflection);
   float reflection_contrib = (1.0f - filter) * reflection + filter *
    fresnel_reflectance;
   float transmission_contrib = filter * (1.0f - fresnel_reflectance);

   // reflected light
   shared_ptr<Path> reflected = make_shared<Path>();
   if (reflection_contrib > 0) {
      shared_ptr<Ray> reflected_ray = intersection->get_reflected_ray();
      reflected = recursive_render_ray(reflected_ray, recursion_level - 1);

      if (keep_log) reflected->log.insert(reflected->log.begin(),
       "  Iteration type: Reflection");
      result->reflected = reflected;
   }

   // refracted light
   shared_ptr<Path> refracted = make_shared<Path>();
   if (transmission_contrib > 0) {
      bool entering = true;
      shared_ptr<Ray> transmitted_ray =
         intersection->get_transmitted_ray(entering);
      refracted = recursive_render_ray(transmitted_ray, recursion_level - 1);

      if (keep_log) refracted->log.insert(refracted->log.begin(),
       "  Iteration type: Refraction");

      if (entering && refracted->distance > 0) {
         vec3 beers = beers_law(intersection->target->pigment.color.to_vec3(),
          refracted->distance);
         refracted->color = RGBColor(refracted->color.to_vec3() * beers);
      }
      result->refracted = refracted;
   }

   RGBColor color = local_color * local_contrib + reflected->color *
    reflection_contrib + refracted->color * transmission_contrib;

   color.saturate();
   result->color = color;
   if (keep_log) {
      result->log.push_back(named_vec3_string(string("     Final Color"),
       color.to_vec3()));
      result->log.push_back(named_vec3_string(string("         Ambient"),
         loc_a));
      result->log.push_back(named_vec3_string(string("         Diffuse"),
         loc_d));
      result->log.push_back(named_vec3_string(string("        Specular"),
         loc_s));
      result->log.push_back(named_vec3_string(string("      Reflection"),
       reflected->color.to_vec3()));
      result->log.push_back(named_vec3_string(string("      Refraction"),
       refracted->color.to_vec3()));
      result->log.push_back(contrib_string(local_contrib, reflection_contrib,
       transmission_contrib));
   }
   result->hit = true;
   return result;
}
