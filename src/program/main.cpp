#include <iostream>
#include <stdlib.h>
#include <string.h>

#include <scene/scene.hpp>
#include <utils/parsing/parse.hpp>
#include "help.hpp"
#include "meta.hpp"

#define SHOW_CMD_ARGS false

using namespace std;

int execute(const char *mode, int argc, char **argv);
int scene_info(shared_ptr<Scene> scene);

int main(int argc, char **argv) {
   cout << "---- " << PROGRAM_NAME << " ----" << endl;
   cout << "Cameron Taylor" << endl << "CPE 473 Spring 2017" << endl << endl;

   // mode
   const char *mode = argv[1];
   if (!mode) {
      cerr << "Please provide a mode" << endl;
      print_help(NULL);
      return 1;
   }

   // help?
   else if (!strcmp(mode, MODE_HELP)) {
      const char *about = argv[2];
      if (!about)
         print_help(mode);
      else
         print_help(about);
      return 0;
   }

   // normal execution
   else if (!strcmp(mode, MODE_RENDER) || !strcmp(mode, MODE_SCENEINFO)
    || !strcmp(mode, MODE_PIXELRAY) || !strcmp(mode, MODE_FIRSTHIT)) {
      // run in a specific mode after stripping the first two command line args
      return execute(mode, argc - 2, argv + 2);
   }

   // default
   else {
      cout << "Unknown mode: " << mode << endl;
      print_help(NULL);
      return 1;
   }
}

void get_positive_number(int argc, char **argv, const int index,
 int &output, bool allow_zero) {
   if (argc <= index) {
      output = -1;
   } else {
      output = atoi(argv[index]);
      int min = allow_zero ? 0 : 1;
      if (output < min) output = min - 1;
   }
}

// mode should be known, and the following arguments should be:
//    INPUT_FILE WIDTH HEIGHT X Y
int execute(const char *mode, int argc, char **argv) {
   int width, height, x, y;
   get_positive_number(argc, argv, 1, width, false);
   get_positive_number(argc, argv, 2, height, false);
   get_positive_number(argc, argv, 3, x, true);
   get_positive_number(argc, argv, 4, y, true);

   if (SHOW_CMD_ARGS) {
      cout << "width: " << width << endl;
      cout << "height: " << height << endl;
      cout << "x: " << x << endl;
      cout << "y: " << y << endl;
   }

   // parse the scene
   shared_ptr<Scene> scene = NULL;
   if (argc > 0) {
      try {
         scene = parse_scene(argv[0]);
      } catch (ParsingException &pe) {
         cerr << pe.what() << endl;
         exit(1);
      }
   } else {
      cerr << "Please provide an input file" << endl;
      exit(1);
   }

   if (!strcmp(mode, MODE_SCENEINFO)) {
      return scene_info(scene);
   }
   
   return 0;
}

int scene_info(shared_ptr<Scene> scene) {
   scene->print();
   return 0;
}
