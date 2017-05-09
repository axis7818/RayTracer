#pragma once
#ifndef _LIGHTING_HPP
#define _LIGHTING_HPP

#include <algorithm>
#include <glm/common.hpp>
#include <glm/geometric.hpp>
#include <glm/vec3.hpp>
#include <math.h>
#include <memory>
#include <rays/intersection.hpp>
#include <rays/path.hpp>
#include <scene/scene.hpp>
#include <sstream>
#include <string>
#include <utils/printing.hpp>
#include <utils/string_building.hpp>

#define MAX_LIGHT_BOUNCES 6
#define USE_SHADOWS true
#define USE_REFLECTIONS true
#define USE_REFRACTIONS true

struct RGBColor;

enum LightingMode { BLINN_PHONG, COOK_TORRANCE };

std::shared_ptr<Path> ray_lighting(std::shared_ptr<Scene> scene,
 std::shared_ptr<Ray> ray, LightingMode lighting_mode);

std::shared_ptr<Path> ray_lighting(std::shared_ptr<Scene> scene,
 glm::vec3 source, glm::vec3 destination, LightingMode lighting_mode);

#endif /* end of include guard: _LIGHTING_HPP */
