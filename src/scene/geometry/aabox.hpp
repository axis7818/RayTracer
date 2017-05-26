#pragma once
#ifndef _AABOX_HPP
#define _AABOX_HPP

#include <algorithm>
#include <glm/mat4x4.hpp>
#include <glm/vec3.hpp>
#include <glm/vec4.hpp>
#include <iostream>
#include <limits>
#include <utils/printing.hpp>
#include "geometry.hpp"

class AABox: public Geometry {
public:

   AABox();
   AABox(glm::vec3 min, glm::vec3 max);

   virtual glm::vec3 get_normal(glm::vec3 point);
   virtual std::shared_ptr<Intersection> get_intersection(
      std::shared_ptr<Ray> ray);
   virtual std::shared_ptr<AABox> get_bounding_box();
   virtual void print() const;
   virtual std::string get_type();
   virtual glm::vec3 get_center();

   void transform_as_bounding_box(glm::mat4 model);
   void expand_to_include(std::shared_ptr<AABox> other);

   glm::vec3 min;
   glm::vec3 max;

private:
   std::vector<glm::vec3> get_transformed_points(glm::mat4 model) const;
   void get_min_and_max_of_points(std::vector<glm::vec3> points,
      glm::vec3 &min, glm::vec3 &max);
};

#endif /* end of include guard: _AABOX_HPP */
