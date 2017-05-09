#include "string_building.hpp"

using namespace std;

string ray_string(shared_ptr<Ray> ray) {
   stringstream s;
   s << "Ray: {" << ray->source.x << " " << ray->source.y << " "
    << ray->source.z << "} -> {" << ray->dir.x << " " << ray->dir.y << " "
    << ray->dir.z << "}";
   return s.str();
}
