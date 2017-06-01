#pragma once
#ifndef _RAY_HPP
#define _RAY_HPP

#include <glm/geometric.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/mat4x4.hpp>
#include <glm/vec3.hpp>
#include <iostream>
#include <limits>
#include <memory>

class Ray: public std::enable_shared_from_this<Ray> {
public:
   Ray(glm::vec3 cam_pos, glm::vec3 to_pixel, float min_t, float max_t);
   Ray(std::shared_ptr<Ray> ray, glm::mat4 inv_transform);

   glm::vec3 point_at(float t) const;
   bool t_valid(float t);
   float t_for_axis_plane(float val, int plane /* 0=x, 1=y, 2=z */);

   glm::vec3 source;    // source point in space
   glm::vec3 dir;       // normalized (?) direction
   float min_t;         // the smallest possible t value for this ray
   float max_t;         // the largest possible t value for this ray, if less
                        //    than min_t, assumed to be infinity
};

#endif /* end of include guard: _RAY_HPP */
