#pragma once
#ifndef _STRING_BUILDING
#define _STRING_BUILDING

#include <memory>
#include <sstream>
#include <string>
#include <rays/ray.hpp>

std::string ray_string(std::shared_ptr<Ray> ray);

#endif /* end of include guard: _STRING_BUILDING */
