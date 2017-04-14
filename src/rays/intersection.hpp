#pragma once
#ifndef _INTERSECTION_HPP
#define _INTERSECTION_HPP

#include <glm/vec3.hpp>
#include <scene/actors/actor.hpp>
#include "ray.hpp"

class Intersection {
public:
   Intersection(std::shared_ptr<Ray> ray, std::shared_ptr<Actor> target,
    float t);

   const std::shared_ptr<Ray> ray;
   const std::shared_ptr<Actor> target;
   const float t;
   glm::vec3 intersection_point;
};

#endif /* end of include guard: _INTERSECTION_HPP */
