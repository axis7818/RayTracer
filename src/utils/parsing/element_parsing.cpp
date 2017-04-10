#include "element_parsing.hpp"

using namespace glm;
using namespace std;

void start_block(ifstream &file, vector<char> &data) {
   char next;
   while (file.get(next)) {
      data.push_back(next);
      if (next == '{')
         return;
   }

   cerr << "ERROR: expected '{' to start an element block" << endl;
   exit(1);
}

void start_vector(ifstream &file, vector<char> &data) {
   char next;
   while (file.get(next)) {
      data.push_back(next);
      if (next == '<')
         return;
   }

   cerr << "ERROR: expected '<' to start a vector block" << endl;
   exit(1);
}

void end_vector(ifstream &file, vector<char> &data, const unsigned int elems) {
   char next;
   unsigned int commas = 0;

   while (file.get(next)) {
      data.push_back(next);

      if (next == ',')
         ++commas;

      if (next == '>') {
         if (commas != elems - 1) {
            cerr << "Expected 3 elements in a vec3" << endl;
            exit(1);
         }
         return;
      }
   }

   cerr << "ERROR: expected '>' to end a vector block" << endl;
   exit(1);
}

vec3 parse_vec3(ifstream &file, vector<char> &data) {
   float x, y z;
   size_t start = data.size();
   end_vector(file, data, 3);

   // TODO: use regular expressions to parse the vec3 from the end of the vector

   return vec3(x, y, z);
}

shared_ptr<Camera> parse_camera(ifstream &file, vector<char> &data) {
   shared_ptr<Camera> camera = make_shared<Camera>();
   start_block(file, data);


   return camera;
}

Light parse_light(ifstream &file, vector<char> &data) {
   Light light;
   return light;
}

Sphere parse_sphere(ifstream &file, vector<char> &data) {
   Sphere sphere;
   return sphere;
}

Plane parse_plane(ifstream &file, vector<char> &data) {
   Plane plane;
   return plane;
}
