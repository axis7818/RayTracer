#pragma once
#ifndef _PLANE_HPP
#define _PLANE_HPP

#include <glm/geometric.hpp>
#include <glm/vec3.hpp>
#include <iostream>
#include <utils/printing.hpp>
#include "geometry.hpp"

class Plane: public Geometry {
public:
   Plane();

   virtual glm::vec3 get_normal(glm::vec3 point);
   virtual std::shared_ptr<Intersection> get_intersection(std::shared_ptr<Ray>
    ray);
   virtual std::shared_ptr<AABox> get_bounding_box() { return nullptr; }
   virtual void print() const;
   virtual std::string get_type();

   glm::vec3 normal;
   float distance;
};

#endif /* end of include guard: _PLANE_HPP */
