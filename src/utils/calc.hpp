#pragma once
#ifndef _CALC_HPP
#define _CALC_HPP

#include <cmath>
#include <glm/vec3.hpp>
#include <stdlib.h>
#include <time.h>

bool almost_equals(float a, float b, float epsilon);

float urand();

glm::vec3 generate_cos_weighted_point();

#endif /* end of include guard: _CALC_HPP */
