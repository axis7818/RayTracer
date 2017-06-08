#pragma once
#ifndef _CALC_HPP
#define _CALC_HPP

#include <cmath>
#include <glm/vec3.hpp>
#include <stdlib.h>
#include <time.h>
#include <vector>

bool almost_equals(float a, float b, float epsilon);

float urand();

std::vector<glm::vec3> get_hemisphere_points(int count);

glm::vec3 generate_cos_weighted_point(float u, float v);

#endif /* end of include guard: _CALC_HPP */
