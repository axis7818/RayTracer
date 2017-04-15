#include "parse.hpp"

using namespace std;

// keep track of parsed objects and eventually pass them to the scene
static shared_ptr<Camera> camera;
static vector<shared_ptr<Light>> lights;
static vector<shared_ptr<Actor>> actors;

void print_data(const vector<char> &data) {
   cout << "------------------------------------------------------";
   for (size_t i = 0; i < data.size(); ++i)
      cout << data[i];
   cout << endl << "------------------------------------------------------"
    << endl;
}

vector<char> read_pov_file(ifstream &file) {
   vector<char> data;

   char next;
   while (read_next(file, data, next)) {
      // check for a key
      if (just_read_key(data, CAMERA_KEY)) {
         camera = parse_camera(file, data);
      } else if (just_read_key(data, LIGHT_KEY)) {
         lights.push_back(parse_light(file, data));
      } else if (just_read_key(data, SPHERE_KEY)) {
         actors.push_back(parse_sphere(file, data));
      } else if (just_read_key(data, PLANE_KEY)) {
         actors.push_back(parse_plane(file, data));
      }
   }

   return data;
}

shared_ptr<Scene> parse_scene(string filename) {
   camera = NULL;
   actors.clear();
   shared_ptr<Scene> scene = make_shared<Scene>(filename);

   // open the file
   // cout << "Parsing file: " << filename << endl;
   ifstream scene_file(filename);
   if (!scene_file.is_open()) {
      throw ParsingException("Could not open file to parse");
   }

   // get contents
   vector<char> data = read_pov_file(scene_file);
   if (SHOW_FILE_CONTENTS) {
      print_data(data);
   }

   // there has to be a camera
   if (camera == NULL) {
      throw ParsingException("No Camera was found in the .pov file");
   }

   // build the scene
   scene->camera = camera;
   scene->lights = lights;
   scene->actors = actors;

   return scene;
}
