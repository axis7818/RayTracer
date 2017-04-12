#pragma once
#ifndef _PARSING_EXCEPTION_HPP
#define _PARSING_EXCEPTION_HPP

#include <exception>

struct ParsingException: public std::exception {
   ParsingException(const char *message);
   const char *what() const throw() { return message; };

   const char *message;
};

#endif /* end of include guard: _PARSING_EXCEPTION_HPP */
