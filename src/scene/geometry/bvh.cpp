#include "bvh.hpp"

using namespace std;

BVH::BVH(vector<shared_ptr<Geometry>> geoms, int axis) {
   axis = axis % 3;

   if (geoms.size() <= 2) {
      shapes = geoms;
      set_boundary();
      return;
   }

   // TODO: sort on axis

   // split into two vectors
   int half = geoms.size() / 2;
   vector<shared_ptr<Geometry>> one(geoms.begin(), geoms.begin() + half);
   vector<shared_ptr<Geometry>> two(geoms.begin() + half, geoms.end());

   // recursive
   axis = (axis + 1) % 3;
   shapes.push_back(make_shared<BVH>(one, axis));
   shapes.push_back(make_shared<BVH>(two, axis));
   set_boundary();
}

void BVH::set_boundary() {
   if (shapes.size() <= 0) return;

   shared_ptr<AABox> first = shapes[0]->get_bounding_box();
   this->min = first->min;
   this->max = first->max;

   for (size_t i = 1; i < shapes.size(); ++i) {
      shared_ptr<AABox> other_box = shapes[i]->get_bounding_box();
      this->expand_to_include(other_box);
   }
}

shared_ptr<Intersection> BVH::get_intersection(shared_ptr<Ray> ray) {
   shared_ptr<Intersection> bb_intersection = AABox::get_intersection(ray);
   if (bb_intersection == nullptr) return nullptr;

   shared_ptr<Intersection> intersection = nullptr;
   for (shared_ptr<Geometry> shape : shapes) {
      shared_ptr<Intersection> check = shape->get_intersection(ray);

      if (check != nullptr &&
            (intersection == nullptr || check->t < intersection->t)) {
         intersection = check;
      }
   }

   return intersection;
}

string BVH::get_type() {
   return string("BVH");
}

void BVH::print() const {
   cout << "UNIMPLEMENTED BVH PRINT" << endl;
}
