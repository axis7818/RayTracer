#include "camera.hpp"

#include <scene/scene.hpp>

using namespace glm;
using namespace std;

Camera::Camera() :
   up(vec3(0, 1, 0)), right(vec3(1.33333, 0, 0)), look_at(SCENE_ORIGIN),
   width(400), height(300)
{
   this->position = vec3(0, 0, 1);
}

vec3 Camera::get_w() {
   return normalize(this->position - this->look_at);
}

shared_ptr<Ray> Camera::make_ray(int x, int y) {
   x = x < 0 ? 0 : x > this->width - 1 ? this->width - 1 : x;
   y = y < 0 ? 0 : y > this->height - 1 ? this->height - 1 : y;
   vec3 forward = -get_w();

   // normalized device coordinates from (0, 0) to (1, 1)
   float ndc_x = -0.5f + (x + 0.5f) / this->width;
   float ndc_y = -0.5f + (y + 0.5f) / this->height;
   float ndc_z = 1;

   // get the pixel's point in space, s (relative to the camera)
   vec3 us = ndc_x * this->right;
   vec3 vs = ndc_y * cross(this->right, forward);
   vec3 ws = ndc_z * forward;

   return make_shared<Ray>(position, us + vs + ws);
}
