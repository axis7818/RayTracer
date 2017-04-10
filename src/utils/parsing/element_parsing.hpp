#pragma once
#ifndef _ELEMENT_PARSING_HPP
#define _ELEMENT_PARSING_HPP

#include <fstream>
#include <glm/vec3.hpp>
#include <iostream>
#include <scene/actors/camera.hpp>
#include <scene/actors/light.hpp>
#include <scene/geometry/sphere.hpp>
#include <scene/geometry/plane.hpp>
#include <vector>
#include "keys.hpp"

std::shared_ptr<Camera> parse_camera(std::ifstream &file, std::vector<char>
 &data);
Light parse_light(std::ifstream &file, std::vector<char> &data);
Sphere parse_sphere(std::ifstream &file, std::vector<char> &data);
Plane parse_plane(std::ifstream &file, std::vector<char> &data);

#endif /* end of include guard: _ELEMENT_PARSING_HPP */
