#include "ray.hpp"
#include "intersection.hpp"

using namespace glm;
using namespace std;

Ray::Ray(vec3 cam_pos, vec3 to_pixel) :
   source(cam_pos), dir(normalize(to_pixel))
{
   min_t = length(to_pixel);
}

shared_ptr<Intersection> Ray::intersects(shared_ptr<Actor> actor) {
   float int_t;

   // Sphere intersection
   if (typeid(*actor) == typeid(Sphere)) {
      shared_ptr<vec2> t = intersects(static_pointer_cast<Sphere>(actor));
      if (t == NULL) return NULL;
      int_t = t->x < t->y ? t->x : t->y;
   }

   // Plane intersection
   else if (typeid(*actor) == typeid(Plane)) {
      shared_ptr<float> t = intersects(static_pointer_cast<Plane>(actor));
      if (t == NULL) return NULL;
      int_t = *t;
   }

   else {
      cerr << "Unknown actor type for intersection..." << endl;
      return NULL;
   }

   // make the intersection object
   return make_shared<Intersection>(shared_from_this(), actor, int_t);
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

shared_ptr<float> Ray::intersects(shared_ptr<Plane> plane) {
   float den = dot(dir, plane->normal);

   // parallel to the plane, no or infinity intersections
   if (den == 0) return NULL;

   float num = plane->distance - dot(source, plane->normal);
   return make_shared<float>(num / den);
}

vec3 Ray::point_at(float t) const {
   return source + t * dir;
}
