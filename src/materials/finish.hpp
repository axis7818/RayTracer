#pragma once
#ifndef _FINISH_HPP
#define _FINISH_HPP

class Finish {
public:
   Finish();

   float ambient;
   float diffuse;
   float specular;
   float roughness;
   float metallic;
   float ior;
   float reflection;
   float refraction;
};

#endif /* end of include guard: _FINISH_HPP */
