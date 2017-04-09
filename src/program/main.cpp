#include <iostream>
#include <stdlib.h>
#include <string.h>

#include <scene/scene.hpp>
#include <utils/parsing/parse.hpp>
#include "help.hpp"
#include "meta.hpp"

using namespace std;

int execute(const char *mode, int argc, char **argv);

int main(int argc, char **argv) {
   cout << "---- " << PROGRAM_NAME << " ----" << endl;
   cout << "Cameron Taylor" << endl << "CPE 473 Spring 2017" << endl;

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
      if (!allow_zero && output == 0)
         output = 0;
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

   cout << "width: " << width << endl;
   cout << "height: " << height << endl;
   cout << "x: " << x << endl;
   cout << "y: " << y << endl;

   // parse the scene
   shared_ptr<Scene> scene = NULL;
   if (argc > 0) {
      cout << "parsing file: " << argv[0] << endl;
      scene = parse_scene(argv[0]);
   }

   return 0;
}
