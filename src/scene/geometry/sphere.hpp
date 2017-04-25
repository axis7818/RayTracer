#pragma once
#ifndef _SPHERE_HPP
#define _SPHERE_HPP

#include <glm/geometric.hpp>
#include <glm/vec3.hpp>
#include <iostream>
#include <utils/printing.hpp>
#include "geometry.hpp"

class Sphere: public Geometry {
public:
   Sphere();

   virtual glm::vec3 get_normal(glm::vec3 point);
   virtual void print() const;

   float radius;
};

#endif /* end of include guard: _SPHERE_HPP */
