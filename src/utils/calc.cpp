#include "calc.hpp"

using namespace glm;
using namespace std;

bool almost_equals(float a, float b, float epsilon) {
   return std::abs(a - b) < epsilon;
}

float urand() {
   return rand() / (float)RAND_MAX;
}

vec3 generate_cos_weighted_point(float u, float v) {
   float radial = sqrt(u);
   float theta = 2.0f * M_PI * v;

   return vec3(
      radial * cos(theta),
      radial * sin(theta),
      sqrt(1.0f - u)
   );
}

vector<vec3> get_hemisphere_points(int count) {
   vector<vec3> result;

   for (size_t i = 0; i < count; ++i) {
      result.push_back(generate_cos_weighted_point(urand(), urand()));
   }

   return result;
}
