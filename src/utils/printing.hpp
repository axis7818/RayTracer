#pragma once
#ifndef _PRINTING_HPP
#define _PRINTING_HPP

#include <glm/vec3.hpp>
#include <iomanip>
#include <iostream>
#include <utils/color.hpp>

void print_vec3(glm::vec3 v, int sig_figs = 4);
void print_color(RGBColor color);

#endif /* end of include guard: _PRINTING_HPP */
