#include "element_parsing.hpp"

using namespace glm;
using namespace std;

// determines if the data vector has just read the given key
bool just_read_key(vector<char> &data, const string &key) {
   long difference = data.size() - key.size();
   if (difference < 0)
      return false;
   const char *other = data.data() + difference;
   int cmp = key.compare(0, string::npos, other, key.size());
   if (SHOW_KEY_DETECTION && cmp == 0) {
      cout << "found key: " << key << endl;
   }
   return cmp == 0;
}

// reads through the file to populate camera and actors
void _start_block(ifstream &file, vector<char> &data) {
   char next;
   while (read_next(file, data, next))
      if (next == '{')
         return;

   throw ParsingException("expected '{' to start an element block");
}

void _start_vector(ifstream &file, vector<char> &data) {
   char next;
   while (read_next(file, data, next))
      if (next == '<')
         return;

   throw ParsingException("expected '<' to start a vector block");
}

vector<float> _end_vector(ifstream &file, vector<char> &data,
 const size_t elems) {
   char next;
   vector<float> result;
   size_t start = data.size();

   while (read_next(file, data, next)) {
      if (next == ',' || next == '>') {
         float val = atof(data.data() + start);
         result.push_back(val);
         start = data.size();

         if (next == '>') {
            return result;
         }
      }
   }

   throw ParsingException("expected '>' to end a vector block");
}

vec3 parse_vec3(ifstream &file, vector<char> &data) {
   _start_vector(file, data);
   vector<float> components = _end_vector(file, data, 3);
   if (components.size() != 3) {
      throw ParsingException("expected 3 elements in a vec3");
   }
   return vec3(components[0], components[1], components[2]);
}

float parse_float(ifstream &file, vector<char> &data) {
   char next = file.peek();
   while ((next < '0' || next > '9') && next != '-') {
      if (!read_next(file, data, next))
         throw ParsingException("EOF while parsing float");
      next = file.peek();
   }
   size_t start = data.size();

   do {
      if (!read_next(file, data, next))
         throw ParsingException("EOF while parsing float");
   } while ((next >= '0' && next <= '9') || next == '.' || next == '-');

   float val = atof(data.data() + start);
   put_back(file, data, next);
   return val;
}

shared_ptr<Camera> parse_camera(ifstream &file, vector<char> &data) {
   shared_ptr<Camera> camera = make_shared<Camera>();
   _start_block(file, data);

   char next;
   while (read_next(file, data, next) && next != '}') {
      if (just_read_key(data, LOCATION_KEY)) {
         camera->position = parse_vec3(file, data);
      } else if (just_read_key(data, UP_KEY)) {
         camera->up = parse_vec3(file, data);
      } else if (just_read_key(data, RIGHT_KEY)) {
         camera->right = parse_vec3(file, data);
      } else if (just_read_key(data, LOOK_AT_KEY)) {
         camera->look_at = parse_vec3(file, data);
      }
   }

   return camera;
}

shared_ptr<Light> parse_light(ifstream &file, vector<char> &data) {
   shared_ptr<Light> light = make_shared<Light>();
   char next;

   _start_block(file, data);
   light->position = parse_vec3(file, data);
   while (read_next(file, data, next) && next != '}') {
      if (just_read_key(data, COLOR_RGB_KEY)) {
         light->color.from_vec3(parse_vec3(file, data));
      }
   }

   return light;
}

shared_ptr<Sphere> parse_sphere(ifstream &file, vector<char> &data) {
   shared_ptr<Sphere> sphere =  make_shared<Sphere>();
   char next;

   _start_block(file, data);
   sphere->position = parse_vec3(file, data);
   sphere->radius = parse_float(file, data);
   while (read_next(file, data, next) && next != '}') {
      if (just_read_key(data, PIGMENT_KEY)) {
         sphere->pigment = parse_pigment(file, data);
      } else if (just_read_key(data, FINISH_KEY)) {
         sphere->finish = parse_finish(file, data);
      }
   }

   return sphere;
}

shared_ptr<Plane> parse_plane(ifstream &file, vector<char> &data) {
   shared_ptr<Plane> plane = make_shared<Plane>();
   char next;

   _start_block(file, data);
   plane->normal = parse_vec3(file, data);
   plane->distance = parse_float(file, data);
   while (read_next(file, data, next) && next != '}') {
      if (just_read_key(data, PIGMENT_KEY)) {
         plane->pigment = parse_pigment(file, data);
      } else if (just_read_key(data, FINISH_KEY)) {
         plane->finish = parse_finish(file, data);
      }
   }

   return plane;
}

Pigment parse_pigment(ifstream &file, vector<char> &data) {
   Pigment pigment;
   char next;

   _start_block(file, data);
   while (read_next(file, data, next) && next != '}') {
      if (just_read_key(data, COLOR_RGB_KEY)) {
         pigment.color.from_vec3(parse_vec3(file, data));
      }
   }

   return pigment;
}

Finish parse_finish(ifstream &file, vector<char> &data) {
   Finish finish;
   char next;

   _start_block(file, data);
   while (read_next(file, data, next) && next != '}') {
      if (just_read_key(data, AMBIENT_KEY)) {
         finish.ambient = parse_float(file, data);
      } else if (just_read_key(data, DIFFUSE_KEY)) {
         finish.diffuse = parse_float(file, data);
      } else if (just_read_key(data, SPECULAR_KEY)) {
         finish.specular = parse_float(file, data);
      } else if (just_read_key(data, ROUGHNESS_KEY)) {
         finish.roughness = parse_float(file, data);
      } else if (just_read_key(data, METALLIC_KEY)) {
         finish.metallic = parse_float(file, data);
      } else if (just_read_key(data, IOR_KEY)) {
         finish.ior = parse_float(file, data);
      }
   }

   return finish;
}
