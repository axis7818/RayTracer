#pragma once
#ifndef _SCENE_HPP
#define _SCENE_HPP

#include <glm/vec3.hpp>
#include <scene/actors/actor.hpp>
#include <scene/actors/camera.hpp>
#include <scene/actors/light.hpp>
#include <string>
#include <utils/printing.hpp>
#include <vector>

#define SCENE_ORIGIN glm::vec3(0, 0, 0)

class Scene {
public:
   Scene(const std::string filename);

   void print();

   std::string filename;
   std::shared_ptr<Camera> camera;
   std::vector<std::shared_ptr<Light>> lights;
   std::vector<std::shared_ptr<Actor>> actors;
};

#endif /* end of include guard: _SCENE_HPP */
