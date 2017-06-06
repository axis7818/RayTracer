#pragma once
#ifndef _PRINTING_HPP
#define _PRINTING_HPP

#include <glm/vec3.hpp>
#include <glm/mat4x4.hpp>
#include <iomanip>
#include <iostream>
#include <materials/finish.hpp>
#include <utils/color.hpp>
#include <memory>
#include <rays/path.hpp>

void print_vec3(glm::vec3 v, int sig_figs = 4);
void print_color(RGBColor color);
void print_finish(Finish finish);
void print_path(std::shared_ptr<Path> path);
void print_mat4(const glm::mat4 &m);

void print_progress(float progress, bool first);

#endif /* end of include guard: _PRINTING_HPP */
