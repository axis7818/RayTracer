#pragma once
#ifndef _SCENE_HPP
#define _SCENE_HPP

#include <glm/vec3.hpp>
#include <scene/actors/actor.hpp>
#include <scene/actors/camera.hpp>
#include <string>
#include <vector>

#define SCENE_ORIGIN glm::vec3(0, 0, 0)

class Scene {
public:
   Scene(const std::string filename);

   std::string filename;
   Camera camera;
   std::vector<Actor> actors;
};

#endif /* end of include guard: _SCENE_HPP */
