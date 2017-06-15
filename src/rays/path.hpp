#pragma once
#ifndef _PATH_HPP
#define _PATH_HPP

#include <memory>
#include <string>
#include <vector>
#include <utils/color.hpp>

class Path {
public:
   Path();

   RGBColor color;
   std::vector<std::string> log;
   std::shared_ptr<Path> reflected;
   std::shared_ptr<Path> refracted;
   float distance;
   bool hit = false;
};

#endif /* end of include guard: _PATH_HPP */
