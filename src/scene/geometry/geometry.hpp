#pragma once
#ifndef _GEOMETRY_HPP
#define _GEOMETRY_HPP

#include <glm/vec3.hpp>
#include <iostream>
#include <materials/finish.hpp>
#include <materials/pigment.hpp>
#include <scene/actors/actor.hpp>

class Geometry: public Actor {
public:
   virtual glm::vec3 get_normal(glm::vec3 point) = 0;

   Finish finish;
   Pigment pigment;
};

#endif /* end of include guard: _GEOMETRY_HPP */
