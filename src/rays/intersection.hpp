#pragma once
#ifndef _INTERSECTION_HPP
#define _INTERSECTION_HPP

#include <glm/vec3.hpp>
#include "ray.hpp"

class Geometry;

class Intersection {
public:
   Intersection(std::shared_ptr<Ray> ray, std::shared_ptr<Ray> obj_ray,
    std::shared_ptr<Geometry> target, float t);

   std::shared_ptr<Ray> ray;
   std::shared_ptr<Ray> obj_ray;
   const std::shared_ptr<Geometry> target;
   const float t;
   glm::vec3 intersection_point;
   glm::vec3 normal;
};

#endif /* end of include guard: _INTERSECTION_HPP */
