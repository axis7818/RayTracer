#include "scene.hpp"

using namespace glm;
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
   cout << endl << endl << "---" << endl;

   // lights
   cout << endl << this->lights.size() << " light(s)" << endl << endl;
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

   cout << "---" << endl << endl;

   // actors
   cout << this->actors.size() << " object(s)" << endl;
   for (size_t i = 0; i < this->actors.size(); ++i) {
      shared_ptr<Actor> actor = this->actors[i];
      cout << endl << "Object[" << i << "]:" << endl;
      actor->print();
   }
}

shared_ptr<Intersection> Scene::cast_ray(shared_ptr<Ray> ray) const {
   shared_ptr<Intersection> test = nullptr;
   shared_ptr<Intersection> closest = nullptr;

   for (size_t i = 0; i < actors.size(); ++i) {
      shared_ptr<Geometry> geom = static_pointer_cast<Geometry>(actors[i]);
      
      test = geom->get_intersection(ray);

      if (closest == nullptr || (test != nullptr && test->t < closest->t))
         closest = test;
   }

   return closest;
}
