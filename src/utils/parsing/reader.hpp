#pragma once
#ifndef _READER_HPP
#define _READER_HPP

#include <iostream>
#include <vector>
#include "parsing_exception.hpp"

bool read_next(std::istream &input, std::vector<char> &data, char &c);

void read_until(std::istream &input, std::vector<char> &data,
 const char target);

void put_back(std::istream &input, std::vector<char> &data, char c);

#endif /* end of include guard: _READER_HPP */
