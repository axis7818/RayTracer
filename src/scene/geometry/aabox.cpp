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
   cerr << "AABox.get_normal: point not on box" << endl;
   return vec3(0, 0, 0);
}

shared_ptr<Intersection> AABox::get_intersection(shared_ptr<Ray> ray) {
   return nullptr; // TODO: implement
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

// AABox AABox::operator +(const AABox &other) {
//    vec3 new_min = vec3(
//       glm::min(this->min.x, other.min.x),
//       glm::min(this->min.y, other.min.y),
//       glm::min(this->min.z, other.min.z)
//    );
//
//    vec3 new_max = vec3(
//       glm::max(this->max.x, other.max.x),
//       glm::max(this->max.y, other.max.y),
//       glm::max(this->max.z, other.max.z)
//    );
//
//    return AABox(new_min, new_max);
// }
