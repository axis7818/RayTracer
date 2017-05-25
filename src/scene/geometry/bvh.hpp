#pragma once
#ifndef _BVH_HPP
#define _BVH_HPP

#include <vector>
#include "aabox.hpp"

class BVH: public AABox {
public:

   virtual void print() const;
   virtual std::string get_type();

   std::vector<std::shared_ptr<Geometry>> shapes;

};

#endif /* end of include guard: _BVH_HPP */
