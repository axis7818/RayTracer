#include "triangle.hpp"

#include <rays/ray.hpp>

using namespace glm;
using namespace std;

Triangle::Triangle() : a(0, 0, 0), b(0, 0, 0), c(0, 0, 0) {}

vec3 Triangle::get_normal(vec3 point) {
   vec3 obj_normal = normalize(cross(b - a, c - a));

   return normal_to_world_space(obj_normal);
}

string Triangle::get_type() {
   return string("Triangle");
}

shared_ptr<Intersection> Triangle::get_intersection(shared_ptr<Ray> ray) {
   shared_ptr<Ray> obj_ray = make_shared<Ray>(ray, this->inv_transform);

   float det_A = this->det_A(obj_ray);

   // the t value must be valid
   float det_t_num = this->det_t_num(obj_ray);
   float t = det_t_num / det_A;
   if (!obj_ray->t_valid(t)) return nullptr;

   // gamma must be between 0 and 1
   float det_gamma_num = this->det_gamma_num(obj_ray);
   float gamma = det_gamma_num / det_A;
   if (gamma < 0 || gamma > 1) return nullptr;

   // beta must be valid as well
   float det_beta_num = this->det_beta_num(obj_ray);
   float beta = det_beta_num / det_A;
   if (beta < 0 || beta > 1 - gamma) return nullptr;

   // we have an intersection!
   return make_shared<Intersection>(ray, obj_ray, shared_from_this(), t);
}

std::shared_ptr<AABox> Triangle::get_bounding_box() {
   vec3 min = vec3(
      glm::min(a.x, glm::min(b.x, c.x)),
      glm::min(a.y, glm::min(b.y, c.y)),
      glm::min(a.z, glm::min(b.z, c.z))
   );
   vec3 max = vec3(
      glm::max(a.x, glm::max(b.x, c.x)),
      glm::max(a.y, glm::max(b.y, c.y)),
      glm::max(a.z, glm::max(b.z, c.z))
   );

   shared_ptr<AABox> result = make_shared<AABox>(min, max);
   result->transform_as_bounding_box(transform);
   return result;
}

vec3 Triangle::get_center() {
   vec4 center = vec4(
      (a.x + b.x + c.x) / 3.0f,
      (a.y + b.y + c.y) / 3.0f,
      (a.z + b.z + c.z) / 3.0f,
      1.0f
   );

   return vec3(transform * center);
}

void Triangle::print() const {
   cout << "- Type: Triangle" << endl;
   cout << "- a: ";
   print_vec3(a);
   cout << endl;
   cout << "- b: ";
   print_vec3(b);
   cout << endl;
   cout << "- c: ";
   print_vec3(c);
   cout << endl;

   cout << "- Color";
   print_vec3(pigment.color.to_vec3());
   cout << ", Filter: " << this->pigment.filter << endl;
   print_finish(this->finish);
}

float Triangle::det_A(shared_ptr<Ray> ray) {
   mat3 A;
   A[0][0] = a.x - b.x;
   A[0][1] = a.y - b.y;
   A[0][2] = a.z - b.z;
   A[1][0] = a.x - c.x;
   A[1][1] = a.y - c.y;
   A[1][2] = a.z - c.z;
   A[2][0] = ray->dir.x;
   A[2][1] = ray->dir.y;
   A[2][2] = ray->dir.z;
   return determinant(A);
}

float Triangle::det_beta_num(shared_ptr<Ray> ray) {
   mat3 m;
   m[0][0] = a.x - ray->source.x;
   m[0][1] = a.y - ray->source.y;
   m[0][2] = a.z - ray->source.z;
   m[1][0] = a.x - c.x;
   m[1][1] = a.y - c.y;
   m[1][2] = a.z - c.z;
   m[2][0] = ray->dir.x;
   m[2][1] = ray->dir.y;
   m[2][2] = ray->dir.z;
   return determinant(m);
}

float Triangle::det_gamma_num(shared_ptr<Ray> ray) {
   mat3 m;
   m[0][0] = a.x - b.x;
   m[0][1] = a.y - b.y;
   m[0][2] = a.z - b.z;
   m[1][0] = a.x - ray->source.x;
   m[1][1] = a.y - ray->source.y;
   m[1][2] = a.z - ray->source.z;
   m[2][0] = ray->dir.x;
   m[2][1] = ray->dir.y;
   m[2][2] = ray->dir.z;
   return determinant(m);
}

float Triangle::det_t_num(shared_ptr<Ray> ray) {
   mat3 m;
   m[0][0] = a.x - b.x;
   m[0][1] = a.y - b.y;
   m[0][2] = a.z - b.z;
   m[1][0] = a.x - c.x;
   m[1][1] = a.y - c.y;
   m[1][2] = a.z - c.z;
   m[2][0] = a.x - ray->source.x;
   m[2][1] = a.y - ray->source.y;
   m[2][2] = a.z - ray->source.z;
   return determinant(m);
}
