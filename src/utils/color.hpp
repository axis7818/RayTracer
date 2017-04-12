#pragma once
#ifndef _COLOR_HPP
#define _COLOR_HPP

#include <glm/vec3.hpp>

struct RGBColor {
   RGBColor() : r(1), g(1), b(1) {};

   glm::vec3 to_vec3() { return glm::vec3(r, g, b); }
   void from_vec3(glm::vec3 v) { r=v.x; g=v.y; b=v.z; }

   float r;
   float g;
   float b;
};

#endif /* end of include guard: _COLOR_HPP */
