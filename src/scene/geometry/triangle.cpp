#include "triangle.hpp"

#include <rays/ray.hpp>

using namespace glm;
using namespace std;

Triangle::Triangle() : a(0, 0, 0), b(0, 0, 0), c(0, 0, 0) {}

vec3 Triangle::get_normal(vec3 point) {
   return normalize(cross(b - a, c - a));
}

shared_ptr<Intersection> Triangle::get_intersection(shared_ptr<Ray> ray) {
   float det_A = this->det_A(ray);

   // the t value must be valid
   float det_t_num = this->det_t_num(ray);
   float t = det_t_num / det_A;
   if (!ray->t_valid(t)) return nullptr;

   // gamma must be between 0 and 1
   float det_gamma_num = this->det_gamma_num(ray);
   float gamma = det_gamma_num / det_A;
   if (gamma < 0 || gamma > 1) return nullptr;

   // beta must be valid as well
   float det_beta_num = this->det_beta_num(ray);
   float beta = det_beta_num / det_A;
   if (beta < 0 || beta > 1 - gamma) return nullptr;

   // we have an intersection!
   return make_shared<Intersection>(ray, shared_from_this(), t);
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
