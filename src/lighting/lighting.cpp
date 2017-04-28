#include "lighting.hpp"
#include <utils/color.hpp>

using namespace glm;
using namespace std;

RGBColor blinn_phong(shared_ptr<Scene> scene,
 shared_ptr<Intersection> intersection, bool shadows) {
   if (intersection == NULL)
      return RGBColor(0, 0, 0);

   float k_a = intersection->target->finish.ambient;
   float k_d = intersection->target->finish.diffuse;
   float k_s = intersection->target->finish.specular;
   float shine = (2.0f / pow(intersection->target->finish.roughness, 2)) - 2.0f;

   vec3 obj_color = intersection->target->pigment.color.to_vec3();
   vec3 ambient = k_a * intersection->target->pigment.color.to_vec3();
   vec3 diffuse = vec3(0, 0, 0);
   vec3 specular = vec3(0, 0, 0);

   vec3 V = normalize(scene->camera->position
    - intersection->intersection_point);
   vec3 N = intersection->target->get_normal(intersection->intersection_point);

   for (shared_ptr<Light> light : scene->lights) {
      vec3 L = normalize(light->position - intersection->intersection_point);
      vec3 H = normalize(V + L);
      vec3 lc = light->color.to_vec3();

      // test for shadow
      if (shadows) {
         float ray_len = length(light->position -
          intersection->intersection_point);
         shared_ptr<Ray> shadow_ray = make_shared<Ray>(
          intersection->intersection_point, L, 0.1f, ray_len);
         shared_ptr<Intersection> shadow_intersection = scene->cast_ray(
          shadow_ray);
         if (shadow_intersection != NULL) continue;
      }

      float N_dot_L = glm::max(dot(N, L), 0.f);
      diffuse += k_d * N_dot_L * lc * obj_color;

      float H_dot_N = glm::max(dot(H, N), 0.f);
      specular += k_s * pow(H_dot_N, shine) * lc * obj_color;
   }

   vec3 color = ambient + diffuse + specular;
   color.x = clamp<float>(color.x, 0, 1);
   color.y = clamp<float>(color.y, 0, 1);
   color.z = clamp<float>(color.z, 0, 1);
   return RGBColor(color);
}

/* Cook Torrance Helper Functions */

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

/* END Cook Torrance Helper Functions */

RGBColor cook_torrance(shared_ptr<Scene> scene,
 shared_ptr<Intersection> intersection, bool shadows) {
   if (intersection == NULL) return RGBColor(0, 0, 0);

   // object properties
   vec3 obj_color = intersection->target->pigment.color.to_vec3();
   float k_a = intersection->target->finish.ambient;
   float k_d = intersection->target->finish.diffuse;
   float roughness = intersection->target->finish.roughness;
   float ior = intersection->target->finish.ior;
   float s = intersection->target->finish.metallic;
   float d = 1 - s;

   // 3 light components. I'll build on the diffuse and specular for each light
   vec3 ambient = k_a * obj_color;
   vec3 diffuse = vec3(0, 0, 0);
   vec3 specular = vec3(0, 0, 0);

   // important vectors and dot products
   vec3 N = intersection->target->get_normal(intersection->intersection_point);
   vec3 V = normalize(scene->camera->position -
    intersection->intersection_point);
   float N_dot_V = glm::max(0.0f, dot(N, V));

   // get diffuse and specular from each light
   for (shared_ptr<Light> light : scene->lights) {

      // important vectors and dot products specific to the light
      vec3 lc = light->color.to_vec3();
      vec3 L = normalize(light->position - intersection->intersection_point);
      vec3 H = normalize(V + L);
      float H_dot_N = glm::max(0.0f, dot(H, N));
      float N_dot_L = glm::max(0.0f, dot(N, L));
      float V_dot_H = glm::max(0.0f, dot(V, H));

      // check for shadows
      if (shadows) {
         float ray_len = length(light->position -
          intersection->intersection_point);
         shared_ptr<Ray> shadow_ray = make_shared<Ray>(
          intersection->intersection_point, L, 0.1f, ray_len);
         shared_ptr<Intersection> shadow_intersection = scene->cast_ray(
          shadow_ray);
         if (shadow_intersection != NULL) continue;
      }

      // calculate some values
      float D = normalized_distribution(H_dot_N, roughness);
      float G = geometric_attenuation(H_dot_N, N_dot_V, N_dot_L, V_dot_H);
      float F = fresnel(ior, V_dot_H);

      // accumulate diffuse lighting
      float r_d = k_d;
      diffuse += d * r_d * N_dot_L * lc * obj_color;

      // accumulate specular lighting
      // NOTE: N_dot_L is not in the denominator since it will be canceled out.
      //       This minimizes floating point rounding errors.
      float r_s = (D * G * F) / (4.0f * N_dot_V);
      specular += s * r_s * lc * obj_color;
   }

   // combine each component
   vec3 color = ambient + diffuse + specular;
   color.x = clamp<float>(color.x, 0, 1);
   color.y = clamp<float>(color.y, 0, 1);
   color.z = clamp<float>(color.z, 0, 1);
   return RGBColor(color);
}
