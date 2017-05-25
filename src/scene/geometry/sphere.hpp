#pragma once
#ifndef _SPHERE_HPP
#define _SPHERE_HPP

#include <glm/geometric.hpp>
#include <glm/vec3.hpp>
#include <iostream>
#include <utils/printing.hpp>
#include "aabox.hpp"
#include "geometry.hpp"

class Sphere: public Geometry {
public:
   Sphere();

   virtual glm::vec3 get_normal(glm::vec3 point);
   virtual std::shared_ptr<Intersection> get_intersection(std::shared_ptr<Ray>
    ray);
   virtual std::shared_ptr<AABox> get_bounding_box();
   virtual void print() const;
   virtual std::string get_type();

   float radius;
};

#endif /* end of include guard: _SPHERE_HPP */
