#include "debug.hpp"

using namespace std;

void debug(const char *string) {
   if (DEBUG) {
      cout << string << endl;
   }
}
