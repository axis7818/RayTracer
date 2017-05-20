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
std::string transformed_ray_string(std::shared_ptr<Ray> ray);
std::string hit_obj_string(std::shared_ptr<Geometry> geom);
std::string intersection_string(std::shared_ptr<Intersection> intersection);
std::string normal_string(glm::vec3 n);
std::string ray_color_string(std::string prefix, RGBColor color);
std::string named_float_string(std::string name, float val);
std::string named_vec3_string(std::string name, glm::vec3 v);
std::string contrib_string(float local, float reflect, float refract);

#endif /* end of include guard: _STRING_BUILDING */
