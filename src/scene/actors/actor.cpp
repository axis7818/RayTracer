#include "actor.hpp"

#include <scene/scene.hpp>

using namespace glm;
using namespace std;

Actor::Actor() :
   position(SCENE_ORIGIN), scale(VEC3_ONE), rotation(VEC3_ZERO)
{}

void Actor::print() {
   cout << "UNIMPLEMENTED ACTOR PRINT FUNCTION" << endl;
}
