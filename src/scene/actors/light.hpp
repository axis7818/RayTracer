#pragma once
#ifndef _LIGHT_HPP
#define _LIGHT_HPP

#include <utils/color.hpp>
#include "actor.hpp"

class Light: public Actor {
public:
   RGBColor color;
};

#endif /* end of include guard: _LIGHT_HPP */
