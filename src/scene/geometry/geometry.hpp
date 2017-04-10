#pragma once
#ifndef _GEOMETRY_HPP
#define _GEOMETRY_HPP

#include <materials/finish.hpp>
#include <materials/pigment.hpp>
#include <scene/actors/actor.hpp>

class Geometry: public Actor {
public:
   Finish finish;
   Pigment pigment;
};

#endif /* end of include guard: _GEOMETRY_HPP */
