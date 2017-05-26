#pragma once
#ifndef _BVH_HPP
#define _BVH_HPP

#include <algorithm>
#include <memory>
#include <vector>
#include "aabox.hpp"
#include "geometry.hpp"

class BVH: public AABox {
public:
   BVH(std::vector<std::shared_ptr<Geometry>> geom, int axis /* 0=x, 1=y, 2=z */);

   virtual void print() const;
   virtual std::string get_type();
   virtual std::shared_ptr<Intersection> get_intersection(
      std::shared_ptr<Ray> ray);

   std::vector<std::shared_ptr<Geometry>> shapes;

private:
   void set_boundary();

   void sort_on_axis(std::vector<std::shared_ptr<Geometry>> shapes, int axis);

};

#endif /* end of include guard: _BVH_HPP */
