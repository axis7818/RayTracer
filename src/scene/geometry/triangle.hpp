#pragma once
#ifndef _TRIANGLE_HPP
#define _TRIANGLE_HPP

#include <iostream>
#include <glm/geometric.hpp>
#include <glm/vec3.hpp>
#include <utils/printing.hpp>
#include "geometry.hpp"

class Triangle: public Geometry {
public:
   Triangle();

   virtual glm::vec3 get_normal(glm::vec3 point);
   virtual void print() const;

   glm::vec3 a;
   glm::vec3 b;
   glm::vec3 c;
};

#endif /* end of include guard: _TRIANGLE_HPP */
