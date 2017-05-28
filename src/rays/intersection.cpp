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
   if (target->get_type() == "Triangle") {
      if (dot(normal, ray->dir) > 0) {
         normal = -normal;
      }
   }
}
