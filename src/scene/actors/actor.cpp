#include "actor.hpp"

#include <scene/scene.hpp>

using namespace glm;

Actor::Actor() :
   position(SCENE_ORIGIN), scale(VEC3_ONE), rotation(VEC3_ZERO)
{}
