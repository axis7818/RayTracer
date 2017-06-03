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

#define GI_COUNT_FIRST_BOUNCE 128
#define GI_COUNT_SECOND_BOUNCE 32

struct RGBColor;

enum LightingMode { BLINN_PHONG, COOK_TORRANCE };

std::shared_ptr<Path> ray_lighting(std::shared_ptr<Scene> scene,
 std::shared_ptr<Ray> ray, LightingMode lighting_mode, const bool use_fresnel,
 const bool use_gi, bool keep_log);

std::shared_ptr<Path> ray_lighting(std::shared_ptr<Scene> scene,
 glm::vec3 source, glm::vec3 destination, LightingMode lighting_mode,
 const bool use_fresnel, const bool use_gi, bool keep_log);

#endif /* end of include guard: _LIGHTING_HPP */
