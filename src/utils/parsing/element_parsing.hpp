#pragma once
#ifndef _ELEMENT_PARSING_HPP
#define _ELEMENT_PARSING_HPP

#include <algorithm>
#include <fstream>
#include <glm/vec3.hpp>
#include <iostream>
#include <lighting/light.hpp>
#include <materials/finish.hpp>
#include <materials/pigment.hpp>
#include <scene/actors/camera.hpp>
#include <scene/geometry/sphere.hpp>
#include <scene/geometry/plane.hpp>
#include <scene/geometry/triangle.hpp>
#include <string>
#include <vector>
#include "keys.hpp"
#include "parsing_exception.hpp"
#include "reader.hpp"

#define SHOW_KEY_DETECTION false

bool just_read_key(std::vector<char> &data, const std::string &key);

std::shared_ptr<Camera> parse_camera(std::ifstream &file, std::vector<char>
 &data);
std::shared_ptr<Light> parse_light(std::ifstream &file,
 std::vector<char> &data);
std::shared_ptr<Sphere> parse_sphere(std::ifstream &file,
 std::vector<char> &data);
std::shared_ptr<Plane> parse_plane(std::ifstream &file,
 std::vector<char> &data);
std::shared_ptr<Triangle> parse_triangle(std::ifstream &file,
 std::vector<char> &data);
Pigment parse_pigment(std::ifstream &file, std::vector<char> &data);
Finish parse_finish(std::ifstream &file, std::vector<char> &data);

#endif /* end of include guard: _ELEMENT_PARSING_HPP */
