#include <iostream>
#include <string.h>

#define PROGRAM_NAME "raytrace"

#define MODE_RENDER "render"
#define MODE_SCENEINFO "sceneinfo"
#define MODE_PIXELRAY "pixelray"
#define MODE_FIRSTHIT "firsthit"
#define MODE_HELP "help"

using namespace std;

static const size_t mode_count = 5;
static const char *mode_names[] = {MODE_RENDER, MODE_SCENEINFO, MODE_PIXELRAY, MODE_FIRSTHIT, MODE_HELP};

void print_help(const char *mode);

int main(int argc, char **argv) {
   // header
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
   if (!strcmp(mode, MODE_HELP)) {
      const char *about = argv[2];
      if (!about)
         print_help(mode);
      else
         print_help(about);
      return 0;
   }
}

void print_help(const char *mode) {
   cout << endl;
   if (!mode) {
      cout << "Usage: " << PROGRAM_NAME << " MODE" << endl;
      cout << "Possible MODE values:" << endl;
      for (size_t i = 0; i < mode_count; ++i) {
         cout << "\t- " << mode_names[i] << endl;
      }
      cout << "Use the help mode for more info" << endl;
      return;
   }

   else if (!strcmp(mode, MODE_RENDER)) {
      cout << "Renders a scene to an image" << endl;
      cout << "Usage: ./" << PROGRAM_NAME << " " << MODE_RENDER << " INPUT_FILE WIDTH HEIGHT" << endl;
      cout << "\t- INPUT_FILE: the name of the povray (.pov) file to read and render" << endl;
      cout << "\t- WIDTH:      image width" << endl;
      cout << "\t- HEIGHT:     image height" << endl;
      return;
   }

   else if (!strcmp(mode, MODE_SCENEINFO)) {
      cout << "Provides a description of a scene .pov file" << endl;
      cout << "Usage: ./" << PROGRAM_NAME << " " << MODE_SCENEINFO << " INPUT_FILE" << endl;
      cout << "\t- INPUT_FILE: the name of the povray (.pov) file to read and describe" << endl;
   }

   else if (!strcmp(mode, MODE_PIXELRAY)) {
      cout << "Prints out a single pixel's ray summary" << endl;
      cout << "Usage: ./" << PROGRAM_NAME << " " << MODE_PIXELRAY << " INPUT_FILE WIDTH HEIGHT X Y" << endl;
      cout << "\t- INPUT_FILE: the name of the povray (.pov) file" << endl;
      cout << "\t- WIDTH:      image width" << endl;
      cout << "\t- HEIGHT:     image height" << endl;
      cout << "\t- X:          the x coordinate of the pixel" << endl;
      cout << "\t- Y:          the y coordinate of the pixel" << endl;
   }

   else if (!strcmp(mode, MODE_FIRSTHIT)) {
      cout << "Prints out a summary of the first object that a ray hits in the scene." << endl;
      cout << "Usage: ./" << PROGRAM_NAME << " " << MODE_FIRSTHIT << " INPUT_FILE WIDTH HEIGHT X Y" << endl;
      cout << "\t- INPUT_FILE: the name of the povray (.pov) file" << endl;
      cout << "\t- WIDTH:      image width" << endl;
      cout << "\t- HEIGHT:     image height" << endl;
      cout << "\t- X:          the x coordinate of the pixel" << endl;
      cout << "\t- Y:          the y coordinate of the pixel" << endl;
   }

   else {
      cout << "For more help: ./" << PROGRAM_NAME << " " << MODE_HELP << " MODE" << endl;
      cout << "Possible MODE values:" << endl;
      for (size_t i = 0; i < mode_count - 1; ++i) {
         cout << "\t- " << mode_names[i] << endl;
      }
      return;
   }
}
