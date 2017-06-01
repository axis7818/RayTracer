#include "calc.hpp"

bool almost_equals(float a, float b, float epsilon) {
   return std::abs(a - b) < epsilon;
}
