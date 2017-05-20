#include "string_building.hpp"

using namespace glm;
using namespace std;

string ray_string(shared_ptr<Ray> ray) {
   stringstream s;
   s << std::setiosflags(std::ios::fixed);
   s << std::setprecision(4);
   s << "             Ray: {" << ray->source.x << " " << ray->source.y << " "
    << ray->source.z << "} -> {" << ray->dir.x << " " << ray->dir.y << " "
    << ray->dir.z << "}";
   return s.str();
}

string transformed_ray_string(shared_ptr<Ray> ray) {
   stringstream s;
   s << std::setiosflags(std::ios::fixed);
   s << std::setprecision(4);
   s << " Transformed Ray: {" << ray->source.x << " " << ray->source.y << " "
    << ray->source.z << "} -> {" << ray->dir.x << " " << ray->dir.y << " "
    << ray->dir.z << "}";
   return s.str();
}

std::string hit_obj_string(std::shared_ptr<Geometry> geom) {
   stringstream s;
   s << "      Hit Object: (ID #" << geom->id << " - " << geom->get_type()
    << ")";
   return s.str();
}

string intersection_string(shared_ptr<Intersection> intersection) {
   stringstream s;
   s << std::setiosflags(std::ios::fixed);
   s << std::setprecision(4);

   s << "    Intersection: {" << intersection->intersection_point.x << " "
    << intersection->intersection_point.y << " "
    << intersection->intersection_point.z << "} at T = "
    << intersection->t;

   return s.str();
}

std::string normal_string(glm::vec3 n) {
   stringstream s;
   s << std::setiosflags(std::ios::fixed);
   s << std::setprecision(4);

   s << "          Normal: {" << n.x << " " << n.y << " " << n.z << "}";

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

std::string named_vec3_string(std::string name, glm::vec3 v) {
   stringstream s;
   s << std::setiosflags(std::ios::fixed);
   s << std::setprecision(4);

   s << name << ": {" << v.x << " " << v.y << " " << v.z << "}";

   return s.str();
}

std::string contrib_string(float local, float reflect, float refract) {
   stringstream s;
   s << std::setiosflags(std::ios::fixed);
   s << std::setprecision(4);

   s << "   Contributions: " << local << " Local, " << reflect
    << " Reflection, " << refract << " Transmission";

   return s.str();
}
