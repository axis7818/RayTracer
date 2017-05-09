#pragma once
#ifndef _STRING_BUILDING
#define _STRING_BUILDING

#include <memory>
#include <glm/vec3.hpp>
#include <sstream>
#include <string>
#include <rays/ray.hpp>
#include <rays/intersection.hpp>
#include <scene/geometry/plane.hpp>
#include <scene/geometry/sphere.hpp>
#include <scene/geometry/triangle.hpp>

std::string ray_string(std::shared_ptr<Ray> ray);
std::string intersection_string(std::shared_ptr<Intersection> intersection);
std::string intersection_normal_string(std::shared_ptr<Intersection>
 intersection);
std::string ray_color_string(std::string prefix, RGBColor color);
std::string named_float_string(std::string name, float val);

#endif /* end of include guard: _STRING_BUILDING */
