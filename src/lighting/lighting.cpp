#include "lighting.hpp"
#include <utils/color.hpp>

using namespace glm;
using namespace std;

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

bool in_shadow(shared_ptr<Scene> scene, shared_ptr<Light> light,
 shared_ptr<Intersection> intersection) {
   vec3 L = light->position - intersection->intersection_point;

   float shadow_ray_len = length(light->position -
    intersection->intersection_point);

   shared_ptr<Ray> shadow_ray = make_shared<Ray>(
    intersection->intersection_point, L, 0.001f, shadow_ray_len);
   shared_ptr<Intersection> shadow_intersection = scene->cast_ray(
    shadow_ray);

   return shadow_intersection != nullptr;
}

RGBColor local_shading(shared_ptr<Scene> scene, shared_ptr<Ray> ray,
 shared_ptr<Intersection> intersection, LightingMode lighting_mode,
 vec3 &ambient, vec3 &diffuse, vec3 &specular) {
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
   diffuse = vec3(0, 0, 0);
   specular = vec3(0, 0, 0);

   // important vectors
   vec3 V = normalize(ray->source - intersection->intersection_point);
   vec3 N = intersection->normal;

   // determine the diffuse/specular from each light source
   for (shared_ptr<Light> light : scene->lights) {

      // not for shadows!
      if (USE_SHADOWS && in_shadow(scene, light, intersection)) {
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

shared_ptr<Ray> get_reflected_ray(shared_ptr<Intersection> intersection) {
   vec3 N = intersection->normal;
   vec3 r = intersection->ray->dir - 2 * (dot(intersection->ray->dir, N)) * N;
   return make_shared<Ray>(intersection->intersection_point, r, 0.001f, 0);
}

shared_ptr<Ray> get_transmitted_ray(shared_ptr<Intersection> intersection,
 bool &entering) {
   // some important values for the calculation
   vec3 d = intersection->ray->dir;
   vec3 N = intersection->normal;
   float ior_ratio = 1.0f / intersection->target->finish.ior;
   if (dot(d, N) > 0) { // this means we are leaving the object
      entering = false;
      ior_ratio = intersection->target->finish.ior;
      N = -N;
   } else {
      entering = true;
   }

   float root = sqrt(1.0f - pow(ior_ratio, 2) * (1.0f - pow(dot(d, N), 2)));
   vec3 first_term = ior_ratio * (d - dot(d, N) * N);
   vec3 t = first_term - N * root;

   return make_shared<Ray>(intersection->intersection_point, t, 0.001f, 0);
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

shared_ptr<Path> recursive_ray_lighting(shared_ptr<Scene> scene,
 shared_ptr<Ray> ray, LightingMode lighting_mode, int recursion_level,
 const bool use_fresnel, bool keep_log) {
   shared_ptr<Path> result = make_shared<Path>();
   if (keep_log) result->log.push_back(ray_string(ray));

   if (recursion_level <= 0) {
      if (keep_log) result->log.push_back(string("Ignoring. Recursion too deep."));
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
   RGBColor local_color = local_shading(scene, ray, intersection,
    lighting_mode, loc_a, loc_d, loc_s);

   // calculate the filter values
   float filter = intersection->target->pigment.filter;
   float reflection = intersection->target->finish.reflection;
   float fresnel_reflectance = use_fresnel ?
    schlicks_approximation(intersection) : 0.0f;

   float local_contrib = (1.0f - filter) * (1.0f - reflection);
   float reflection_contrib = (1.0f - filter) * reflection + filter *
    fresnel_reflectance;
   float transmission_contrib = filter * (1.0f - fresnel_reflectance);

   // reflected light
   shared_ptr<Path> reflected = make_shared<Path>();
   if (reflection_contrib > 0) {
      shared_ptr<Ray> reflected_ray = get_reflected_ray(intersection);
      reflected = recursive_ray_lighting(scene, reflected_ray,
       lighting_mode, recursion_level - 1, use_fresnel, keep_log);
      if (keep_log) reflected->log.insert(reflected->log.begin(),
       "  Iteration type: Reflection");
      result->reflected = reflected;
   }

   // refracted light
   shared_ptr<Path> refracted = make_shared<Path>();
   if (transmission_contrib > 0) {
      bool entering = true;
      shared_ptr<Ray> transmitted_ray = get_transmitted_ray(intersection,
       entering);
      refracted = recursive_ray_lighting(scene, transmitted_ray,
       lighting_mode, recursion_level - 1, use_fresnel, keep_log);
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
      result->log.push_back(named_vec3_string(string("         Ambient"), loc_a));
      result->log.push_back(named_vec3_string(string("         Diffuse"), loc_d));
      result->log.push_back(named_vec3_string(string("        Specular"), loc_s));
      result->log.push_back(named_vec3_string(string("      Reflection"),
       reflected->color.to_vec3()));
      result->log.push_back(named_vec3_string(string("      Refraction"),
       refracted->color.to_vec3()));
      result->log.push_back(contrib_string(local_contrib, reflection_contrib,
       transmission_contrib));
   }
   return result;
}

shared_ptr<Path> ray_lighting(shared_ptr<Scene> scene, vec3 source,
 vec3 destination, LightingMode lighting_mode, const bool use_fresnel, bool keep_log) {
   shared_ptr<Ray> ray = make_shared<Ray>(source, destination - source, 0, -1);
   return ray_lighting(scene, ray, lighting_mode, use_fresnel, keep_log);
}

shared_ptr<Path> ray_lighting(shared_ptr<Scene> scene, shared_ptr<Ray> ray,
 LightingMode lighting_mode, const bool use_fresnel, bool keep_log) {
   return recursive_ray_lighting(scene, ray, lighting_mode,
    MAX_LIGHT_BOUNCES, use_fresnel, keep_log);
}
