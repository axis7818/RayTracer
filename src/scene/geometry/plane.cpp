#include "plane.hpp"

using namespace glm;
using namespace std;

Plane::Plane() :
   normal(0, 1, 0), distance(0)
{}

vec3 Plane::get_normal(vec3 point) {
   return normalize(this->normal);
}

void Plane::print() const {
   cout << "- Type: Plane" << endl;
   cout << "- Normal: ";
   print_vec3(this->normal);
   cout << endl;
   cout << "- Distance: " << this->distance << endl;
   cout << "- Color: ";
   print_vec3(this->pigment.color.to_vec3());
   cout << endl;
   cout << "- Material:" << endl;
   cout << "  - Ambient: " << this->finish.ambient << endl;
   cout << "  - Diffuse: " << this->finish.diffuse << endl;
}
