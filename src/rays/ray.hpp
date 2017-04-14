#pragma once
#ifndef _RAY_HPP
#define _RAY_HPP

#include <glm/geometric.hpp>
#include <glm/vec2.hpp>
#include <glm/vec3.hpp>
#include <memory>
#include <scene/geometry/plane.hpp>
#include <scene/geometry/sphere.hpp>

class Intersection;

class Ray: public std::enable_shared_from_this<Ray> {
public:
   Ray(glm::vec3 cam_pos, glm::vec3 to_pixel);

   std::shared_ptr<Intersection> intersects(std::shared_ptr<Actor> actor);
   std::shared_ptr<glm::vec2> intersects(std::shared_ptr<Sphere> sphere);
   std::shared_ptr<float> intersects(std::shared_ptr<Plane> plane);
   glm::vec3 point_at(float t) const;

   glm::vec3 source;
   glm::vec3 dir;
   float min_t;
};

#endif /* end of include guard: _RAY_HPP */
