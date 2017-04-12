#include "camera.hpp"

#include <scene/scene.hpp>

using namespace glm;
using namespace std;

Camera::Camera() :
   up(vec3(0, 1, 0)), right(vec3(1.33333, 0, 0)), look_at(SCENE_ORIGIN)
{
   this->position = vec3(0, 0, 1);
}

void copy(Camera *this_one, const Camera &other) {
   // Actor properties
   this_one->position = other.position;
   this_one->scale = other.scale;
   this_one->rotation = other.rotation;

   // Camera properties
   this_one->up = other.up;
   this_one->right = other.right;
   this_one->look_at = other.look_at;
}

Camera::Camera(const Camera &other) {
   copy(this, other);
}

Camera Camera::operator =(const Camera &other) {
   copy(this, other);
   return *this;
}

Camera::~Camera() {}
