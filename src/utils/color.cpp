#include "color.hpp"

using namespace glm;

void RGBColor::saturate() {
   r = clamp<float>(r, 0, 1);
   g = clamp<float>(g, 0, 1);
   b = clamp<float>(b, 0, 1);
}

bool RGBColor::is_black() {
   return r == 0 && g == 0 && b == 0;
}
