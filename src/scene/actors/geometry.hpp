#pragma once
#ifndef _GEOMETRY_HPP
#define _GEOMETRY_HPP

#include <materials/finish.hpp>
#include <materials/pigment.hpp>
#include "actor.hpp"

class Geometry: public Actor {
public:
   Finish finish;
   Pigment pigment;
};

#endif /* end of include guard: _GEOMETRY_HPP */
