#include "printing.hpp"

using namespace glm;
using namespace std;

void print_vec3(vec3 v) {
   cout << "{" << v.x << " " << v.y << " " << v.z << "}";
}

void print_color(RGBColor color) {
   cout << "Color: (" << color.r << ", " << color.g << ", " << color.b << ")";
}
