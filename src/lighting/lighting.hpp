#pragma once
#ifndef _LIGHTING_HPP
#define _LIGHTING_HPP

#include <algorithm>
#include <glm/geometric.hpp>
#include <glm/vec3.hpp>
#include <memory>
#include <rays/intersection.hpp>
#include <scene/scene.hpp>

struct RGBColor;

RGBColor blinn_phong(std::shared_ptr<Scene> scene,
 std::shared_ptr<Intersection> intersection);

RGBColor cook_torrance(std::shared_ptr<Scene> scene,
 std::shared_ptr<Intersection> intersection);

#endif /* end of include guard: _LIGHTING_HPP */
