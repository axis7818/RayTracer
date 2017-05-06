#pragma once
#ifndef _LIGHTING_HPP
#define _LIGHTING_HPP

#include <algorithm>
#include <glm/common.hpp>
#include <glm/geometric.hpp>
#include <glm/vec3.hpp>
#include <memory>
#include <rays/intersection.hpp>
#include <scene/scene.hpp>
#include <utils/printing.hpp>

#define MAX_LIGHT_BOUNCES 6

struct RGBColor;

RGBColor blinn_phong(std::shared_ptr<Scene> scene,
 std::shared_ptr<Intersection> intersection, bool shadows);

RGBColor cook_torrance(std::shared_ptr<Scene> scene,
 std::shared_ptr<Intersection> intersection, bool shadows);

#endif /* end of include guard: _LIGHTING_HPP */
