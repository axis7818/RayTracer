#include "sphere.hpp"

using namespace glm;
using namespace std;

Sphere::Sphere() :
   radius(1)
{}

vec3 Sphere::get_normal(vec3 point) {
   return normalize(point - this->position);
}

shared_ptr<Intersection> Sphere::get_intersection(shared_ptr<Ray> ray) {
   // quadratic equation coefficients
   float a = dot(ray->dir, ray->dir);
   vec3 offset = ray->source - position;
   float b = 2 * dot(ray->dir, offset);
   float c = dot(offset, offset) - radius * radius;

   // for descriminants < 0, no intersection
   float desc = b * b - 4 * a * c;
   if (desc < 0) return nullptr;

   float t1 = (-b + sqrt(desc)) / (2 * a);
   float t2 = (-b - sqrt(desc)) / (2 * a);

   // decide which t value to use
   bool t1_valid = ray->t_valid(t1);
   bool t2_valid = ray->t_valid(t2);
   float t = ray->min_t;
   if (!t1_valid && !t2_valid)
      return nullptr;
   else if (t1_valid && t2_valid)
      t = t1 < t2 ? t1 : t2;
   else if (t1_valid)
      t = t1;
   else if (t2_valid)
      t = t2;

   return make_shared<Intersection>(ray, shared_from_this(), t);
}

void Sphere::print() const {
   cout << "- Type: Sphere" << endl;
   cout << "- Center: ";
   print_vec3(this->position);
   cout << endl;
   cout << "- Radius: " << this->radius << endl;
   cout << "- Color: ";
   print_vec3(this->pigment.color.to_vec3());
   cout << ", Filter: " << this->pigment.filter << endl;
   print_finish(this->finish);
}
