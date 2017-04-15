#include <iostream>
#include <stdlib.h>
#include <string.h>

#include <rays/intersection.hpp>
#include <scene/scene.hpp>
#include <string>
#include <utils/parsing/parse.hpp>
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include <utils/stb_image_write.h>
#include "help.hpp"
#include "meta.hpp"


#define SHOW_CMD_ARGS false
#define SHOW_HEADER false

using namespace std;

int prepare_execute(const char *mode, int argc, char **argv);
int execute(const char *mode, const Scene &scene, const int width,
 const int height, const int x, const int y);

int render(const Scene &scene);
int pixelray(const Scene &scene, const int x, const int y);
int firsthit(const Scene &scene, const int x, const int y);

int main(int argc, char **argv) {
   if (SHOW_HEADER) {
      cout << "---- " << PROGRAM_NAME << " ----" << endl;
      cout << "Cameron Taylor" << endl << "CPE 473 Spring 2017" << endl << endl;
   }

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
      return prepare_execute(mode, argc - 2, argv + 2);
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
   int min = allow_zero ? 0 : 1;
   if (argc <= index) {
      output = min - 1;
   } else {
      output = atoi(argv[index]);
      if (output < min) output = min - 1;
   }
}

// mode should be known, and the following arguments should be:
//    INPUT_FILE WIDTH HEIGHT X Y
int prepare_execute(const char *mode, int argc, char **argv) {
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
         scene = parse_scene(string("../resources/") + argv[0]);
      } catch (ParsingException &pe) {
         cerr << pe.what() << endl;
         exit(1);
      }
   } else {
      cerr << "Please provide an input file" << endl;
      exit(1);
   }

   return execute(mode, *scene, width, height, x, y);
}

int execute(const char *mode, const Scene &scene, const int width,
 const int height, const int x, const int y) {
   if (!strcmp(mode, MODE_SCENEINFO)) {
      scene.print();
      return 0;
   }

   // these modes need a width and height
   bool wh_good = true;
   if (width <= 0) {
      cerr << "Width must be at least 1" << endl;
      wh_good = false;
   }
   if (height <= 0) {
      cerr << "Height must be at least 1" << endl;
      wh_good = false;
   }
   if (!wh_good)
      return 1;
   scene.camera->width = width;
   scene.camera->height = height;

   if (!strcmp(mode, MODE_RENDER)) {
      return render(scene);
   } else if (!strcmp(mode, MODE_FIRSTHIT) || !strcmp(mode, MODE_PIXELRAY)) {

      // these modes need an x and y
      bool xy_good = true;
      if (x < 0 || x > width - 1) {
         cerr << "x must be in range [0, width - 1]" << endl;
         xy_good = false;
      }
      if (y < 0 || y > height - 1) {
         cerr << "y must be in range [0, height - 1]" << endl;
         xy_good = false;
      }
      if (!xy_good)
         return 1;

      if (!strcmp(mode, MODE_FIRSTHIT)) {
         return firsthit(scene, x, y);
      } else if (!strcmp(mode, MODE_PIXELRAY)) {
         return pixelray(scene, x, y);
      }

   } else {
      cerr << "UNKNOWN MODE!" << endl;
   }
   return 1;
}

int render(const Scene &scene) {
   unsigned char *data = new unsigned char[scene.camera->width *
    scene.camera->height * 3];

   // cast the rays
   for (int x = 0; x < scene.camera->width; ++x) {
      for (int y = 0; y < scene.camera->height; ++y) {
         shared_ptr<Ray> ray = scene.camera->make_ray(x, y);
         shared_ptr<Intersection> intersection = scene.cast_ray(ray);

         unsigned char r = 0;
         unsigned char g = 0;
         unsigned char b = 0;

         if (intersection != NULL) {
            r = intersection->target->pigment.color.r * 255;
            g = intersection->target->pigment.color.g * 255;
            b = intersection->target->pigment.color.b * 255;
         }

         size_t index = scene.camera->width * 3 * (scene.camera->height -
          1 - y) + 3 * x;
         data[index + 0] = r;
         data[index + 1] = g;
         data[index + 2] = b;
      }
   }

   // write out the image
   stbi_write_png("output.png", scene.camera->width, scene.camera->height, 3,
    data, scene.camera->width * 3);
   delete[] data;
   return 0;
}

int firsthit(const Scene &scene, const int x, const int y) {
   shared_ptr<Ray> ray = scene.camera->make_ray(x, y);
   shared_ptr<Intersection> intersection = scene.cast_ray(ray);

   cout << "Pixel: [" << x << ", " << y << "] Ray: ";
   print_vec3(ray->source);
   cout << " -> ";
   print_vec3(ray->dir);

   // check for no hit
   if (intersection == NULL) {
      cout << endl << "No Hit" << endl;
      return 0;
   }

   bool is_geometry = false;
   cout << endl << "T = " << intersection->t << endl;
   cout << "Object Type: ";
   if (typeid(*intersection->target) == typeid(Sphere)) {
      cout << "Sphere" << endl;
      is_geometry = true;
   } else if (typeid(*intersection->target) == typeid(Plane)) {
      cout << "Plane" << endl;
      is_geometry = true;
   }

   if (is_geometry) {
      print_color(static_pointer_cast<Geometry>(intersection->target)->pigment
       .color);
      cout << endl;
   }

   return 0;
}

int pixelray(const Scene &scene, const int x, const int y) {
   shared_ptr<Ray> ray = scene.camera->make_ray(x, y);

   cout << "Pixel: [" << x << ", " << y << "] Ray: ";
   print_vec3(ray->source);
   cout << " -> ";
   print_vec3(ray->dir);
   cout << endl;

   return 0;
}
