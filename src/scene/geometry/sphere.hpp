#pragma once
#ifndef _SPHERE_HPP
#define _SPHERE_HPP

#include <iostream>
#include <utils/printing.hpp>
#include "geometry.hpp"

class Sphere: public Geometry {
public:
   Sphere();

   virtual void print();

   float radius;
};

#endif /* end of include guard: _SPHERE_HPP */
