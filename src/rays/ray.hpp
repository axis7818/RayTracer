#pragma once
#ifndef _RAY_HPP
#define _RAY_HPP

#include <glm/geometric.hpp>
#include <glm/mat3x3.hpp>
#include <glm/vec2.hpp>
#include <glm/vec3.hpp>
#include <memory>
#include <scene/geometry/plane.hpp>
#include <scene/geometry/sphere.hpp>
#include <scene/geometry/triangle.hpp>

class Intersection;

class Ray: public std::enable_shared_from_this<Ray> {
public:
   Ray(glm::vec3 cam_pos, glm::vec3 to_pixel, float min_t, float max_t);

   std::shared_ptr<Intersection> intersects(std::shared_ptr<Geometry> geometry);
   std::shared_ptr<glm::vec2> intersects(std::shared_ptr<Sphere> sphere);
   bool intersects(std::shared_ptr<Plane> plane, float &t);
   bool intersects(std::shared_ptr<Triangle> triangle, float &t);
   glm::vec3 point_at(float t) const;

   glm::vec3 source;    // source point in space
   glm::vec3 dir;       // normalized direction
   float min_t;         // the smallest possible t value for this ray
   float max_t;         // the largest possible t value for this ray, if less
                        //    than min_t, assumed to be infinity
};

#endif /* end of include guard: _RAY_HPP */
