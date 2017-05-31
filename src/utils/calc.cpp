#include "calc.hpp"

bool almost_equals(float a, float b, float epsilon) {
   return (a > b - epsilon) && (a < b + epsilon);
}
