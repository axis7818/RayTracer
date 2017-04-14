#pragma once
#ifndef _CAMERA_HPP
#define _CAMERA_HPP

#include <glm/geometric.hpp>
#include <glm/vec3.hpp>
#include <iostream>
#include <rays/ray.hpp>
#include "actor.hpp"

class Camera: public Actor {
public:
   Camera();

   std::shared_ptr<Ray> make_ray(int x, int y);
   glm::vec3 get_w();

   glm::vec3 up;
   glm::vec3 right;
   glm::vec3 look_at;
   int width;
   int height;
};

#endif /* end of include guard: _CAMERA_HPP */
