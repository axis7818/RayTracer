#include "plane.hpp"

using namespace glm;
using namespace std;

Plane::Plane() :
   normal(0, 1, 0), distance(0)
{}

vec3 Plane::get_normal(vec3 point) {
   return normalize(this->normal);
}

shared_ptr<Intersection> Plane::get_intersection(shared_ptr<Ray> ray) {
   assert(ray != nullptr);
   float den = dot(ray->dir, normal);

   // parallel to the plane, none or infinity intersections
   if (den == 0) return nullptr;

   // otherwise, we have 1 intersection point
   float num = distance - dot(ray->source, normal);
   float t = num / den;

   // make sure it is a valid t value
   if (!ray->t_valid(t)) return nullptr;

   // we have an intersection!
   return make_shared<Intersection>(ray, shared_from_this(), t);
}

void Plane::print() const {
   cout << "- Type: Plane" << endl;
   cout << "- Normal: ";
   print_vec3(this->normal);
   cout << endl;
   cout << "- Distance: " << this->distance << endl;
   cout << "- Color: ";
   print_vec3(this->pigment.color.to_vec3());
   cout << ", Filter: " << this->pigment.filter << endl;
   print_finish(this->finish);
}
