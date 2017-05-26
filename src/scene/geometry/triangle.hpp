#pragma once
#ifndef _TRIANGLE_HPP
#define _TRIANGLE_HPP

#include <iostream>
#include <glm/matrix.hpp>
#include <glm/geometric.hpp>
#include <glm/mat3x3.hpp>
#include <glm/vec3.hpp>
#include <utils/printing.hpp>
#include "aabox.hpp"
#include "geometry.hpp"

class Ray;

class Triangle: public Geometry {
public:
   Triangle();

   virtual glm::vec3 get_normal(glm::vec3 point);
   virtual std::shared_ptr<Intersection> get_intersection(std::shared_ptr<Ray>
    ray);
   virtual std::shared_ptr<AABox> get_bounding_box();
   virtual void print() const;
   virtual std::string get_type();
   virtual glm::vec3 get_center();

   float det_A(std::shared_ptr<Ray> ray);
   float det_beta_num(std::shared_ptr<Ray> ray);
   float det_gamma_num(std::shared_ptr<Ray> ray);
   float det_t_num(std::shared_ptr<Ray> ray);

   glm::vec3 a;
   glm::vec3 b;
   glm::vec3 c;
};

#endif /* end of include guard: _TRIANGLE_HPP */
