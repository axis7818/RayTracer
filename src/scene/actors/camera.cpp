#include "camera.hpp"

#include <scene/scene.hpp>

using namespace glm;

Camera::Camera() :
   up(vec3(0, 1, 0)), right(vec3(1.33333, 0, 0)), look_at(SCENE_ORIGIN)
{
   this->position = vec3(0, 0, 1);
}
