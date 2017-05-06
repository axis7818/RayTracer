#include "ray.hpp"
#include "intersection.hpp"

using namespace glm;
using namespace std;

Ray::Ray(vec3 cam_pos, vec3 to_pixel, float min_t, float max_t) :
   source(cam_pos), dir(normalize(to_pixel)), min_t(min_t), max_t(max_t)
{}

shared_ptr<Intersection> Ray::intersects(shared_ptr<Geometry> geom) {
   float int_t;

   // Sphere intersection
   if (typeid(*geom) == typeid(Sphere)) {
      shared_ptr<vec2> t = intersects(static_pointer_cast<Sphere>(geom));
      if (t == NULL) return NULL;
      if ((t->x < min_t && t->y < min_t) || (max_t > min_t && t->x > max_t && t->y > max_t)) {
         return NULL;
      } else if (t->x < min_t || (max_t > min_t && t->x > max_t)) {
         int_t = t->y;
      } else if (t->y < min_t || (max_t > min_t && t->y > max_t)) {
         int_t = t->x;
      } else {
         int_t = t->x < t->y ? t->x : t->y;
      }
   }

   // Plane and Triangle intersection
   else if (typeid(*geom) == typeid(Plane) || typeid(*geom) ==
    typeid(Triangle)) {
      float t = min_t - 1;

      if (
         (typeid(*geom) == typeid(Triangle) &&
         !intersects(static_pointer_cast<Triangle>(geom), t))
         ||
         (typeid(*geom) == typeid(Plane) &&
         !intersects(static_pointer_cast<Plane>(geom), t))
      ) return NULL;

      if (t < min_t) return NULL;
      if (max_t > min_t && t > max_t) return NULL;
      int_t = t;
   }

   else {
      cerr << "Unknown geom type for intersection..." << endl;
      return NULL;
   }

   // make the intersection object
   return make_shared<Intersection>(shared_from_this(), geom, int_t);
}

shared_ptr<vec2> Ray::intersects(shared_ptr<Sphere> sphere) {
   // quadratic equation coefficients
   float a = dot(dir, dir);
   vec3 offset = source - sphere->position;
   float b = 2 * dot(dir, offset);
   float c = dot(offset, offset) - sphere->radius * sphere->radius;

   // for determinants < 0, no intersections
   float det = b * b - 4 * a * c;
   if (det < 0) return NULL;

   float t1 = (-b + sqrt(det)) / (2 * a);
   float t2 = (-b - sqrt(det)) / (2 * a);
   return make_shared<vec2>(t1, t2);
}

bool Ray::intersects(shared_ptr<Plane> plane, float &t) {
   float den = dot(dir, plane->normal);

   // parallel to the plane, no or infinity intersections
   if (den == 0) return false;

   float num = plane->distance - dot(source, plane->normal);
   t = num / den;
   return true;
}

bool Ray::intersects(shared_ptr<Triangle> triangle, float &t) {
   return false;
}

vec3 Ray::point_at(float t) const {
   return source + t * dir;
}
