#include "plane.hpp"

using namespace glm;
using namespace std;

Plane::Plane() :
   normal(0, 1, 0), distance(0)
{}

vec3 Plane::get_normal(vec3 point) {
   vec3 obj_normal = normalize(this->normal);
   return normal_to_world_space(obj_normal);
}

string Plane::get_type() {
   return string("Plane");
}

shared_ptr<Intersection> Plane::get_intersection(shared_ptr<Ray> ray) {
   assert(ray != nullptr);

   shared_ptr<Ray> obj_ray = make_shared<Ray>(ray, this->inv_transform);

   float den = dot(obj_ray->dir, normal);

   // parallel to the plane, none or infinity intersections
   if (den == 0) return nullptr;

   // otherwise, we have 1 intersection point
   float num = distance - dot(obj_ray->source, normal);
   float t = num / den;

   // make sure it is a valid t value
   if (!obj_ray->t_valid(t)) return nullptr;

   // we have an intersection!
   return make_shared<Intersection>(ray, obj_ray, shared_from_this(), t);
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
