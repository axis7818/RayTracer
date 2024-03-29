#pragma once
#ifndef _PARSE_HPP
#define _PARSE_HPP

#include <fstream>
#include <iostream>
#include <lighting/light.hpp>
#include <scene/actors/actor.hpp>
#include <scene/actors/camera.hpp>
#include <scene/scene.hpp>
#include <vector>
#include "element_parsing.hpp"
#include "keys.hpp"
#include "parsing_exception.hpp"
#include "reader.hpp"

#define SHOW_FILE_CONTENTS false

std::shared_ptr<Scene> parse_scene(std::string filename);

#endif /* end of include guard: _PARSE_HPP */
