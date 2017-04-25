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

shared_ptr<Ray> Camera::make_ray(int i, int j) {
   // clamp to within the view bounds
   i = i < 0 ? 0 : i > this->width - 1 ? this->width - 1 : i;
   j = j < 0 ? 0 : j > this->height - 1 ? this->height - 1 : j;

   // determine viewspace coordinates (between 0 and 1)
   float u_s = (i + 0.5f) / this->width - 0.5f;
   float v_s = (j + 0.5f) / this->height - 0.5f;
   float w_s = -1; // focal length is always -1 since it provides reasonable results

   // vector from the camera's location to the pixel in world space
   vec3 w = get_w();
   vec3 to_pixel = u_s * this->right + v_s * normalize(cross(this->right, -w)) + w_s * w;
   // vec3 to_pixel = u_s * this->right + v_s * this->up + w_s * w;

   return make_shared<Ray>(position, to_pixel, 0);
}
