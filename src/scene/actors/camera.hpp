#pragma once
#ifndef _CAMERA_HPP
#define _CAMERA_HPP

#include <glm/vec3.hpp>
#include <iostream>

#include "actor.hpp"

class Camera: public Actor {
public:
   Camera();
   Camera(const Camera &other);
   ~Camera();

   Camera operator =(const Camera &other);

   glm::vec3 up;
   glm::vec3 right;
   glm::vec3 look_at;
};

#endif /* end of include guard: _CAMERA_HPP */
