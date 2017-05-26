#include "aabox.hpp"

using namespace glm;
using namespace std;

AABox::AABox() : min(0, 0, 0), max(1, 1, 1) {}
AABox::AABox(vec3 min, vec3 max) : min(min), max(max) {}

string AABox::get_type() {
   return string("AABox");
}

vec3 AABox::get_normal(vec3 point) {
   point = point_to_obj_space(point);

   // on the top?
   if (point.y == max.y)
      return normal_to_world_space(vec3(0, 1, 0));

   // on the bottom?
   if (point.y == min.y)
      return normal_to_world_space(vec3(0, -1, 0));

   // on the left?
   if (point.x == min.x)
      return normal_to_world_space(vec3(-1, 0, 0));

   // on the right?
   if (point.x == max.x)
      return normal_to_world_space(vec3(1, 0, 0));

   // on the back?
   if (point.z == min.z)
      return normal_to_world_space(vec3(0, 0, -1));

   // on the front?
   if (point.z == max.z)
      return normal_to_world_space(vec3(0, 0, 1));

   // not on the box...
   // cerr << "AABox.get_normal: point not on box" << endl;
   return vec3(0, 0, 0);
}

shared_ptr<Intersection> AABox::get_intersection(shared_ptr<Ray> ray) {
   shared_ptr<Ray> obj_ray = make_shared<Ray>(ray, this->inv_transform);

   float tgmin = numeric_limits<float>::min();
   float tgmax = numeric_limits<float>::max();
   float t1, t2;

   // x
   if (obj_ray->dir.x == 0 &&
         (obj_ray->source.x < min.x || obj_ray->source.x > max.x)) {
      return nullptr;
   } else {
      t1 = obj_ray->t_for_axis_plane(min.x, 0);
      t2 = obj_ray->t_for_axis_plane(max.x, 0);
      if (t1 > t2) swap(t1, t2);
      if (t1 > tgmin) tgmin = t1;
      if (t2 < tgmax) tgmax = t2;
   }

   // y
   if (obj_ray->dir.y == 0 &&
         (obj_ray->source.y < min.y || obj_ray->source.y > max.y)) {
      return nullptr;
   } else {
      t1 = obj_ray->t_for_axis_plane(min.y, 1);
      t2 = obj_ray->t_for_axis_plane(max.y, 1);
      if (t1 > t2) swap(t1, t2);
      if (t1 > tgmin) tgmin = t1;
      if (t2 < tgmax) tgmax = t2;
   }

   // z
   if (obj_ray->dir.z == 0 &&
         (obj_ray->source.z < min.z || obj_ray->source.z > max.z)) {
      return nullptr;
   } else {
      t1 = obj_ray->t_for_axis_plane(min.z, 2);
      t2 = obj_ray->t_for_axis_plane(max.z, 2);
      if (t1 > t2) swap(t1, t2);
      if (t1 > tgmin) tgmin = t1;
      if (t2 < tgmax) tgmax = t2;
   }

   // no Intersection
   if (tgmin > tgmax || tgmax < 0) return nullptr;

   // if still here, its an Intersection at tgmin
   return make_shared<Intersection>(ray, obj_ray, shared_from_this(), tgmin);
}

std::shared_ptr<AABox> AABox::get_bounding_box() {
   shared_ptr<Geometry> result_geom = shared_from_this();
   return static_pointer_cast<AABox>(result_geom);
}

std::vector<glm::vec3> AABox::get_transformed_points(mat4 model) const {
   vector<vec3> points;

   points.push_back(vec3(model * vec4(min.x, min.y, min.z, 1.0f)));
   points.push_back(vec3(model * vec4(min.x, min.y, max.z, 1.0f)));
   points.push_back(vec3(model * vec4(min.x, max.y, min.z, 1.0f)));
   points.push_back(vec3(model * vec4(min.x, max.y, max.z, 1.0f)));
   points.push_back(vec3(model * vec4(max.x, min.y, min.z, 1.0f)));
   points.push_back(vec3(model * vec4(max.x, min.y, max.z, 1.0f)));
   points.push_back(vec3(model * vec4(max.x, max.y, min.z, 1.0f)));
   points.push_back(vec3(model * vec4(max.x, max.y, max.z, 1.0f)));

   return points;
}

void AABox::get_min_and_max_of_points(std::vector<glm::vec3> points,
   glm::vec3 &min, glm::vec3 &max) {

   min = max = points[0];
   for (int i = 1; i < points.size(); ++i) {

      if (points[i].x < min.x)
         min.x = points[i].x;
      if (points[i].x > max.x)
         max.x = points[i].x;

      if (points[i].y < min.y)
         min.y = points[i].y;
      if (points[i].y > max.y)
         max.y = points[i].y;

      if (points[i].z < min.z)
         min.z = points[i].z;
      if (points[i].z > max.z)
         max.z = points[i].z;

   }
}

vec3 AABox::get_center() {
   vec4 center = vec4(
      (min.x + max.x) / 2.0f,
      (min.y + max.y) / 2.0f,
      (min.z + max.z) / 2.0f,
      1.0f
   );

   return vec3(transform * center);
}

void AABox::transform_as_bounding_box(glm::mat4 model) {
   vector<vec3> points = get_transformed_points(model);

   vec3 min, max;
   get_min_and_max_of_points(points, min, max);

   this->min = min;
   this->max = max;
}

void AABox::print() const {
   cout << "UNIMPLEMENTED AABOX PRINT" << endl;
}

void AABox::expand_to_include(shared_ptr<AABox> other) {
   vec3 new_min = vec3(
      glm::min(this->min.x, other->min.x),
      glm::min(this->min.y, other->min.y),
      glm::min(this->min.z, other->min.z)
   );

   vec3 new_max = vec3(
      glm::max(this->max.x, other->max.x),
      glm::max(this->max.y, other->max.y),
      glm::max(this->max.z, other->max.z)
   );

   this->min = new_min;
   this->max = new_max;
}
