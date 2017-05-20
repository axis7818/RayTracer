#pragma once
#ifndef _GEOMETRY_HPP
#define _GEOMETRY_HPP

#include <glm/mat4x4.hpp>
#include <glm/vec3.hpp>
#include <iostream>
#include <materials/finish.hpp>
#include <materials/pigment.hpp>
#include <rays/intersection.hpp>
#include <rays/ray.hpp>
#include <scene/actors/actor.hpp>

class Geometry: public Actor, public std::enable_shared_from_this<Geometry> {
public:
   virtual glm::vec3 get_normal(glm::vec3 point) = 0;
   virtual std::shared_ptr<Intersection> get_intersection(std::shared_ptr<Ray>
    ray) = 0;

   virtual std::string get_type() = 0;

   Finish finish;
   Pigment pigment;
   glm::mat4 transform = glm::mat4(1.0f);
   glm::mat4 inv_transform = glm::mat4(1.0f);
   glm::mat4 normal_matrix = glm::mat4(1.0f);

protected:
   glm::vec3 point_to_obj_space(glm::vec3 world_point);
   glm::vec3 normal_to_world_space(glm::vec3 obj_normal);

};

#endif /* end of include guard: _GEOMETRY_HPP */
