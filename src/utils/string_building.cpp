#include "string_building.hpp"

using namespace glm;
using namespace std;

string ray_string(shared_ptr<Ray> ray) {
   stringstream s;
   s << "Ray: {" << ray->source.x << " " << ray->source.y << " "
    << ray->source.z << "} -> {" << ray->dir.x << " " << ray->dir.y << " "
    << ray->dir.z << "}";
   return s.str();
}

string intersection_string(shared_ptr<Intersection> intersection) {
   stringstream s;

   s << "Hit Object (";
   if (typeid(*intersection->target) == typeid(Plane))
      s << "Plane";
   else if (typeid(*intersection->target) == typeid(Sphere))
      s << "Sphere";
   else if (typeid(*intersection->target) == typeid(Triangle))
      s << "Triangle";
   else
      cerr << "Unknown target type" << endl;
   s << ") at T = " << intersection->t << ", Intersection = {"
    << intersection->intersection_point.x << " "
    << intersection->intersection_point.y << " "
    << intersection->intersection_point.z << "}";

   return s.str();
}

string intersection_normal_string(shared_ptr<Intersection> intersection) {
   stringstream s;
   vec3 n = intersection->target->get_normal(intersection->intersection_point);
   s << "Normal {" << n.x << " " << n.y << " " << n.z << "}";
   return s.str();
}

string ray_color_string(string prefix, RGBColor color) {
   stringstream s;
   s << prefix << " Color: {" << color.r << " " << color.g << " " << color.b
    << "}";
   return s.str();
}

string named_float_string(string name, float val) {
   stringstream s;
   s << name << ": " << val;
   return s.str();
}
