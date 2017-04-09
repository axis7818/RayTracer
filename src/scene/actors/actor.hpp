#pragma once
#ifndef _ACTOR_HPP
#define _ACTOR_HPP

#include <glm/vec3.hpp>
#include <utils/glm_ext.hpp>

class Actor {
public:
   Actor();

   glm::vec3 position;
   glm::vec3 scale;
   glm::vec3 rotation;
};

#endif /* end of include guard: _ACTOR_HPP */
