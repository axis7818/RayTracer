#include "geometry.hpp"

using namespace glm;
using namespace std;

vec3 Geometry::point_to_obj_space(vec3 world_point) {
   vec4 point = vec4(world_point, 1.0f);
   return vec3(inv_transform * point);
}

vec3 Geometry::normal_to_world_space(vec3 obj_normal) {
   vec4 normal = vec4(obj_normal, 0.0f);
   return normalize(vec3(normal_matrix * normal));
}
