#include "ray.hpp"

using namespace glm;
using namespace std;

Ray::Ray(vec3 cam_pos, vec3 to_pixel, float min_t, float max_t) :
   source(cam_pos), dir(normalize(to_pixel)), min_t(min_t), max_t(max_t)
{}

vec3 Ray::point_at(float t) const {
   return source + t * dir;
}

bool Ray::t_valid(float t) {
   return t >= min_t && (max_t <= min_t || t <= max_t);
}
