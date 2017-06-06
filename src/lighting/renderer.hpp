#pragma once
#ifndef _RENDERER_HPP
#define _RENDERER_HPP

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

enum LightingMode { BLINN_PHONG, COOK_TORRANCE };

class Renderer {
public:
   Renderer(std::shared_ptr<Scene> scene, LightingMode lighting_mode,
      bool use_fresnel, bool use_gi, bool keep_log);

   std::shared_ptr<Path> render_ray(std::shared_ptr<Ray> ray);
   std::shared_ptr<Path> render_ray(glm::vec3 source, glm::vec3 destination);

   std::shared_ptr<Scene> scene;
   LightingMode lighting_mode;
   bool use_fresnel;
   bool use_gi;
   bool keep_log;

private:

   std::shared_ptr<Path> recursive_render_ray(std::shared_ptr<Ray> ray,
      int recursion_level);

   bool in_shadow(std::shared_ptr<Intersection> intersection,
      std::shared_ptr<Light> light);
   RGBColor local_shading(std::shared_ptr<Intersection> intersection,
      int gi_count, glm::vec3 &ambient, glm::vec3 &diffuse,
      glm::vec3 &specular);

};

#endif /* end of include guard: _RENDERER_HPP */
