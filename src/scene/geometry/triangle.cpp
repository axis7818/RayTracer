#include "triangle.hpp"

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
   cout << endl;
   cout << "- Material:" << endl;
   cout << "  - Ambient: " << finish.ambient << endl;
   cout << "  - Diffuse: " << finish.diffuse << endl;
   cout << "  - Specular: " << finish.specular << endl;
   cout << "  - Roughness: " << finish.roughness << endl;
}
