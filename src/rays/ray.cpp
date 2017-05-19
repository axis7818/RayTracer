#include "ray.hpp"

using namespace glm;
using namespace std;

Ray::Ray(vec3 cam_pos, vec3 to_pixel, float min_t, float max_t) :
   source(cam_pos), dir(normalize(to_pixel)), min_t(min_t), max_t(max_t)
{}

Ray::Ray(shared_ptr<Ray> ray, mat4 inv_transform) {
   min_t = ray->min_t;
   max_t = ray->max_t;

   vec4 ray_source = vec4(ray->source, 1.0f);
   vec4 ray_dir = vec4(ray->dir, 0.0f);

   source = vec3(inv_transform * ray_source);
   dir = vec3(inv_transform * ray_dir); // not normalized to preserve t's meaning
}

vec3 Ray::point_at(float t) const {
   return source + t * dir;
}

bool Ray::t_valid(float t) {
   return t >= min_t && (max_t <= min_t || t <= max_t);
}
