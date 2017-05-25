#pragma once
#ifndef _CALC_HPP
#define _CALC_HPP

bool almost_equals(float a, float b, float epsilon) {
   float diff = a - b;
   diff = diff < 0 ? -diff : diff;
   return epsilon > diff;
}

#endif /* end of include guard: _CALC_HPP */
