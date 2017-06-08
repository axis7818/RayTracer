#pragma once
#ifndef _COLOR_HPP
#define _COLOR_HPP

#include <glm/common.hpp>
#include <glm/vec3.hpp>

struct RGBColor {
   RGBColor() : r(1), g(1), b(1) {};
   RGBColor(float r, float g, float b) : r(r), g(g), b(b) {};
   RGBColor(glm::vec3 color) : r(color.x), g(color.y), b(color.z) {};

   glm::vec3 to_vec3() const { return glm::vec3(r, g, b); }
   void from_vec3(glm::vec3 v) { r=v.x; g=v.y; b=v.z; }

   void saturate();

   RGBColor operator +(const RGBColor &other) {
      RGBColor result;
      result.r = this->r + other.r;
      result.g = this->g + other.g;
      result.b = this->b + other.b;
      return result;
   }

   RGBColor operator *(const float &f) {
      RGBColor result;
      result.r = this->r * f;
      result.g = this->g * f;
      result.b = this->b * f;
      return result;
   }

   void operator +=(const RGBColor &other) {
      this->r += other.r;
      this->g += other.g;
      this->b += other.b;
   }

   void operator /=(const float &div) {
      this->r /= div;
      this->g /= div;
      this->b /= div;
   }

   void operator *=(const float &mul) {
      this->r *= mul;
      this->g *= mul;
      this->b *= mul;
   }

   float r;
   float g;
   float b;
};

#endif /* end of include guard: _COLOR_HPP */
