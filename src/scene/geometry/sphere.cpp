#include "sphere.hpp"

using namespace glm;
using namespace std;

Sphere::Sphere() :
   radius(1)
{}

vec3 Sphere::get_normal(vec3 point) {
   return normalize(point - this->position);
}

void Sphere::print() const {
   cout << "- Type: Sphere" << endl;
   cout << "- Center: ";
   print_vec3(this->position);
   cout << endl;
   cout << "- Radius: " << this->radius << endl;
   cout << "- Color: ";
   print_vec3(this->pigment.color.to_vec3());
   cout << endl;
   cout << "- Material:" << endl;
   cout << "  - Ambient: " << this->finish.ambient << endl;
   cout << "  - Diffuse: " << this->finish.diffuse << endl;
   cout << "  - Specular: " << this->finish.specular << endl;
   cout << "  - Shine: " << this->finish.shine << endl;
}
