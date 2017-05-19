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
   return make_ray(i, j, 0, 0, 1);
}

float get_u_s(int width, int i, int m, int ss) {
   float ss_offset = (m + 0.5f) / ss;
   float pix_offset = (i + ss_offset) / width;
   return -0.5f + pix_offset;
}

float get_v_s(int height, int j, int n, int ss) {
   float ss_offset = (n + 0.5f) / ss;
   float pix_offset = (j + ss_offset) / height;
   return -0.5f + pix_offset;
}

shared_ptr<Ray> Camera::make_ray(int i, int j, int m, int n, int ss) {
   // clamp to within the view bounds
   i = i < 0 ? 0 : i > this->width - 1 ? this->width - 1 : i;
   j = j < 0 ? 0 : j > this->height - 1 ? this->height - 1 : j;

   // determine viewspace coordinates (between 0 and 1)
   float u_s = get_u_s(this->width, i, m, ss);
   float v_s = get_v_s(this->height, j, n, ss);
   float w_s = -1; // focal length is always -1 since it provides reasonable results

   // vector from the camera's location to the pixel in world space
   vec3 w = get_w();
   vec3 to_pixel = u_s * this->right + v_s * normalize(cross(this->right, -w)) + w_s * w;
   // vec3 to_pixel = u_s * this->right + v_s * this->up + w_s * w;

   return make_shared<Ray>(position, to_pixel, 0, -1);
}
