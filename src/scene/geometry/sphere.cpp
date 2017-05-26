#include "sphere.hpp"

using namespace glm;
using namespace std;

Sphere::Sphere() :
   radius(1)
{}

vec3 Sphere::get_normal(vec3 point) {
   vec3 obj_point = point_to_obj_space(point);
   vec3 obj_normal = normalize(obj_point - this->position);
   return normal_to_world_space(obj_normal);
}

string Sphere::get_type() {
   return string("Sphere");
}

shared_ptr<Intersection> Sphere::get_intersection(shared_ptr<Ray> ray) {
   shared_ptr<Ray> obj_ray = make_shared<Ray>(ray, this->inv_transform);

   // quadratic equation coefficients
   float a = dot(obj_ray->dir, obj_ray->dir);
   vec3 offset = obj_ray->source - position;
   float b = 2 * dot(obj_ray->dir, offset);
   float c = dot(offset, offset) - radius * radius;

   // for descriminants < 0, no intersection
   float desc = b * b - 4 * a * c;
   if (desc < 0) return nullptr;

   float t1 = (-b + sqrt(desc)) / (2 * a);
   float t2 = (-b - sqrt(desc)) / (2 * a);

   // decide which t value to use
   bool t1_valid = obj_ray->t_valid(t1);
   bool t2_valid = obj_ray->t_valid(t2);
   float t = obj_ray->min_t;
   if (!t1_valid && !t2_valid)
      return nullptr;
   else if (t1_valid && t2_valid)
      t = t1 < t2 ? t1 : t2;
   else if (t1_valid)
      t = t1;
   else if (t2_valid)
      t = t2;

   return make_shared<Intersection>(ray, obj_ray, shared_from_this(), t);
}

shared_ptr<AABox> Sphere::get_bounding_box() {
   vec3 min_point = vec3(
      position.x - radius,
      position.y - radius,
      position.z - radius
   );

   vec3 max_point = vec3(
      position.x + radius,
      position.y + radius,
      position.z + radius
   );

   shared_ptr<AABox> result = make_shared<AABox>(min_point, max_point);
   result->transform_as_bounding_box(transform);
   return result;
}

vec3 Sphere::get_center() {
   vec4 point = vec4(position, 1.0f);
   return vec3(transform * point);
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
