#include "printing.hpp"

using namespace glm;
using namespace std;

void print_vec3(vec3 v, int sig_figs) {
   if (sig_figs > 0)
      cout << setprecision(sig_figs);
   cout << "{" << v.x << " " << v.y << " " << v.z << "}";
}

void print_color(RGBColor color) {
   cout << "Color: " << color.r << " " << color.g << " " << color.b << "";
}

void print_finish(Finish finish) {
   cout << "- Material:" << endl;
   cout << "  - Ambient: " << finish.ambient << endl;
   cout << "  - Diffuse: " << finish.diffuse << endl;
   cout << "  - Specular: " << finish.specular << endl;
   cout << "  - Roughness: " << finish.roughness << endl;
   cout << "  - Metalic: " << finish.metallic << endl;
   cout << "  - IOR: " << finish.ior << endl;
   cout << "  - Reflection: " << finish.reflection << endl;
   cout << "  - Refraction: " << finish.refraction << endl;
}

void print_path(shared_ptr<Path> path, int level) {
   for (int i = 0; i < path->log.size(); ++i) {
      for (int j = 0; j < level; ++j) cout << "  ";
      cout << path->log[i] << endl;
   }

   if (path->reflected != NULL) {
      for (int j = 0; j < level; ++j) cout << "  ";
      cout << "- Reflection" << endl;
      print_path(path->reflected, level + 1);
   }

   if (path->refracted != NULL) {
      for (int j = 0; j < level; ++j) cout << "  ";
      cout << "- Refraction" << endl;
      print_path(path->refracted, level + 1);
   }
}

void print_path(shared_ptr<Path> path) {
   cout << "Primary" << endl;
   print_path(path, 0);
}
