#include "parse.hpp"

using namespace std;

// keep track of parsed objects and eventually pass them to the scene
static shared_ptr<Camera> camera;
static vector<Actor> actors;

// determines if the data vector has just read the given key
bool just_read_key(vector<char> &data, const string &key) {
   long difference = data.size() - key.size();
   if (difference < 0)
      return false;
   const char *other = data.data() + difference;
   int cmp = key.compare(0, string::npos, other, key.size());
   return cmp == 0;
}

// reads through the file to populate camera and actors
vector<char> read_pov_file(ifstream &file) {
   vector<char> data;

   char next;
   while (file.get(next)) {
      // check for a comment and consume the rest of the line if it is found
      if (next == '/' && (char)file.peek() == '/') {
         do {
            file.get(next);
         } while(next != '\n');
         continue;
      }

      // add the character
      data.push_back(next);

      // check for a key
      if (just_read_key(data, CAMERA_KEY)) {
         cout << "\t- '" << CAMERA_KEY << "'..." << endl;
         camera = parse_camera(file, data);
      } else if (just_read_key(data, LIGHT_KEY)) {
         cout << "\t- '" << LIGHT_KEY << "'..." << endl;
         actors.push_back(parse_light(file, data));
      } else if (just_read_key(data, SPHERE_KEY)) {
         cout << "\t- '" << SPHERE_KEY << "'..." << endl;
         actors.push_back(parse_sphere(file, data));
      } else if (just_read_key(data, PLANE_KEY)) {
         cout << "\t- '" << PLANE_KEY << "'..." << endl;
         actors.push_back(parse_plane(file, data));
      }
   }

   return data;
}

shared_ptr<Scene> parse_scene(const char *filename) {
   camera = NULL;
   actors.clear();
   shared_ptr<Scene> scene = make_shared<Scene>(filename);

   // open the file
   cout << endl << "Parsing file: " << filename << endl;
   ifstream scene_file(filename);
   if (!scene_file) {
      cerr << "Could not open file: " << filename << endl;
      exit(1);
   }

   // get contents
   vector<char> data = read_pov_file(scene_file);
   cout << "------------------------------------------------------";
   for (size_t i = 0; i < data.size(); ++i)
      cout << data[i];
   cout << "------------------------------------------------------" << endl;

   // there has to be a camera
   if (camera == NULL) {
      cerr << "ERROR: No Camera was found in the .pov file" << endl;
      exit(1);
   }

   // build the scene
   scene->camera = Camera(*camera);
   scene->actors = actors;

   return scene;
}
