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
#define LIGHTING_MODE_BP 0
#define LIGHTING_MODE_CT 1

struct RGBColor;

RGBColor ray_lighting(std::shared_ptr<Scene> scene, 
 std::shared_ptr<Ray> ray, int lighting_mode, bool shadows);

RGBColor ray_lighting(std::shared_ptr<Scene> scene,
 glm::vec3 source, glm::vec3 destination, int lighting_mode, bool shadows);

#endif /* end of include guard: _LIGHTING_HPP */
