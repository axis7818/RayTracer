#include "lighting.hpp"
#include <utils/color.hpp>

using namespace glm;
using namespace std;

RGBColor blinn_phong(shared_ptr<Scene> scene,
 shared_ptr<Intersection> intersection) {
   if (intersection == NULL)
      return RGBColor(0, 0, 0);

   float k_a = intersection->target->finish.ambient;
   float k_d = intersection->target->finish.diffuse;
   float k_s = intersection->target->finish.specular;
   float shine = (2.0f / pow(intersection->target->finish.roughness, 2)) - 2.0f;

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
      shared_ptr<Ray> shadow_ray = make_shared<Ray>(
       intersection->intersection_point, L, 0.1f);
      shared_ptr<Intersection> shadow_intersection = scene->cast_ray(
       shadow_ray);
      if (shadow_intersection != NULL) continue;

      float N_dot_L = dot(N, L);
      if (N_dot_L > 0)
         diffuse += k_d * N_dot_L * lc;

      float H_dot_N = dot(H, N);
      if (H_dot_N > 0)
         specular += k_s * pow(H_dot_N, shine) * lc;
   }

   vec3 color = ambient + diffuse + specular;
   color.x = clamp<float>(color.x, 0, 1);
   color.y = clamp<float>(color.y, 0, 1);
   color.z = clamp<float>(color.z, 0, 1);
   return RGBColor(color);
}

RGBColor cook_torrance(shared_ptr<Scene> scene,
 shared_ptr<Intersection> intersection) {
   if (intersection == NULL)
      return RGBColor(0, 0, 0);

   float k_a = intersection->target->finish.ambient;
   float k_d = intersection->target->finish.diffuse;
   float a = 0.3;    // assume for now, might come in with the .pov file
   float n = 1.0f;   // assume for now, might come in with the .pov file

   vec3 ambient = k_a * intersection->target->pigment.color.to_vec3();
   vec3 diffuse = vec3(0, 0, 0);
   vec3 specular = vec3(0, 0, 0);

   vec3 V = normalize(scene->camera->position
    - intersection->intersection_point);
   vec3 N = intersection->target->get_normal(intersection->intersection_point);
   float N_dot_V = dot(N, V);

   if (N_dot_V > 0) {
      for (shared_ptr<Light> light : scene->lights) {
         vec3 lc = light->color.to_vec3();
         vec3 L = normalize(light->position - intersection->intersection_point);
         vec3 H = normalize(V + L);

         // test for shadow
         shared_ptr<Ray> shadow_ray = make_shared<Ray>(
          intersection->intersection_point, L, 0.1f);
         shared_ptr<Intersection> shadow_intersection = scene->cast_ray(
          shadow_ray);
         if (shadow_intersection != NULL) continue;

         float H_dot_N = glm::max<float>(dot(H, N), 0);
         float V_dot_H = glm::max<float>(dot(V, H), 0);
         float N_dot_L = dot(N, L);
         if (N_dot_L <= 0)
            continue;

         float s = 0.2;       // assume for now, might come in with the .pov file
         float d = 1.0f - s;  // assume for now, might come in with the .pov file

         float D = pow(H_dot_N / (M_PI * a * a), (2.0f / (a * a)) - 2.0f);
         float G = glm::min<float>(2.0f * H_dot_N * N_dot_V / V_dot_H,
          2.0f * H_dot_N * N_dot_L / V_dot_H); // TODO: handle the case where V_dot_H is zero
         G = glm::min<float>(1.0f, G);
         float F_0 = pow((n - 1) / (n + 1), 2);
         float F = F_0 + (1 - F_0) * pow(1 - V_dot_H, 5);

         float r_d = k_d;
         float r_s = D * G * F / (4.0f * N_dot_V);

         diffuse += N_dot_L * d * r_d * lc;
         specular += s * r_s * lc;
      }
   }

   vec3 color = ambient + diffuse + specular;
   color.x = clamp<float>(color.x, 0, 1);
   color.y = clamp<float>(color.y, 0, 1);
   color.z = clamp<float>(color.z, 0, 1);
   return RGBColor(color);
}
