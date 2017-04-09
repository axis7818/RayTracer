#pragma once
#ifndef _SCENE_HPP
#define _SCENE_HPP

#include <vector>

#include <scene/actors/actor.hpp>
#include <scene/actors/camera.hpp>

class Scene {
public:
   Scene();
private:
   Camera camera;
   std::vector<Actor> actors;
};

#endif /* end of include guard: _SCENE_HPP */
