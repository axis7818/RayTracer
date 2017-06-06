#include "intersection.hpp"

#include <scene/geometry/geometry.hpp>

using namespace glm;
using namespace std;

Intersection::Intersection(shared_ptr<Ray> ray, shared_ptr<Ray> obj_ray,
 shared_ptr<Geometry> target, float t) :
   ray(ray), obj_ray(obj_ray), target(target), t(t)
{
   intersection_point = ray->point_at(t);
   normal = target->get_normal(intersection_point);

   // special case for triangle
   if (target->get_type() == "Triangle" || target->get_type() == "Plane") {
      if (dot(normal, ray->dir) > 0) {
         normal = -normal;
      }
   }
}

shared_ptr<Ray> Intersection::get_reflected_ray() {
   vec3 N = normal;
   vec3 r = ray->dir - 2 * (dot(ray->dir, N)) * N;
   return make_shared<Ray>(intersection_point, r, 0.001f, 0);
}

shared_ptr<Ray> Intersection::get_transmitted_ray(bool &entering) {
   // some important values for the calculation
   vec3 d = ray->dir;
   vec3 N = normal;
   float ior_ratio = 1.0f / target->finish.ior;
   if (dot(d, N) > 0) { // this means we are leaving the object
      entering = false;
      ior_ratio = target->finish.ior;
      N = -N;
   } else {
      entering = true;
   }

   float root = sqrt(1.0f - pow(ior_ratio, 2) * (1.0f - pow(dot(d, N), 2)));
   vec3 first_term = ior_ratio * (d - dot(d, N) * N);
   vec3 t = first_term - N * root;

   return make_shared<Ray>(intersection_point, t, 0.001f, 0);
}
