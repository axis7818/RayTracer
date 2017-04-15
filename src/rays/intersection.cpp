#include "intersection.hpp"

using namespace glm;
using namespace std;

Intersection::Intersection(shared_ptr<Ray> ray, shared_ptr<Geometry> target,
 float t) :
   ray(ray), target(target), t(t)
{
   intersection_point = ray->point_at(t);
}
