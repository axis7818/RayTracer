#pragma once
#ifndef _PLANE_HPP
#define _PLANE_HPP

#include <glm/vec3.hpp>
#include "geometry.hpp"

class Plane: public Geometry {
public:
   Plane();

   glm::vec3 normal;
   float distance;
};

#endif /* end of include guard: _PLANE_HPP */
