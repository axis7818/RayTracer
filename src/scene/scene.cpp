#include "scene.hpp"

using namespace std;

Scene::Scene(const string filename) :
   filename(filename)
{}

void Scene::print() const {
   // camera
   cout << "Camera:" << endl;
   cout << "- Location: ";
   print_vec3(this->camera->position);
   cout << endl;
   cout << "- Up: ";
   print_vec3(this->camera->up);
   cout << endl;
   cout << "- Right: ";
   print_vec3(this->camera->right);
   cout << endl;
   cout << "- Look at: ";
   print_vec3(this->camera->look_at);
   cout << endl;

   // lights
   cout << endl << this->lights.size() << " light(s)" << endl;
   for (size_t i = 0; i < this->lights.size(); ++i) {
      shared_ptr<Light> light = this->lights[i];
      cout << "Light[" << i << "]:" << endl;
      cout << "- Location: ";
      print_vec3(light->position);
      cout << endl;
      cout << "- Color: ";
      print_vec3(light->color.to_vec3());
      cout << endl << endl;
   }

   // actors
   cout << this->actors.size() << " object(s)" << endl;
   for (size_t i = 0; i < this->actors.size(); ++i) {
      shared_ptr<Actor> actor = this->actors[i];
      cout << "Object[" << i << "]:" << endl;
      actor->print();
      cout << endl;
   }
}

shared_ptr<Intersection> Scene::cast_ray(shared_ptr<Ray> ray) const {
   shared_ptr<Intersection> test = NULL;
   shared_ptr<Intersection> closest = NULL;

   for (size_t i = 0; i < actors.size(); ++i) {
      test = ray->intersects(actors[i]);
      if (closest == NULL) {
         closest = test;
      }
   }

   return closest;
}
