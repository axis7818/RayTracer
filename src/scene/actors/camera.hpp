#pragma once
#ifndef _CAMERA_HPP
#define _CAMERA_HPP

#include <glm/vec3.hpp>

#include "actor.hpp"

class Camera: public Actor {
public:
   Camera();

   glm::vec3 up;
   glm::vec3 right;
   glm::vec3 look_at;
};

#endif /* end of include guard: _CAMERA_HPP */
