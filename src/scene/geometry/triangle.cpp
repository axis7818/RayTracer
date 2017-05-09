#include "triangle.hpp"

#include <rays/ray.hpp>

using namespace glm;
using namespace std;

Triangle::Triangle() : a(0, 0, 0), b(0, 0, 0), c(0, 0, 0) {}

vec3 Triangle::get_normal(vec3 point) {
   return normalize(cross(b - a, c - a)); // TODO: verify that this faces the right direction
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
