#include "reader.hpp"

using namespace std;

bool read_next(istream &input, vector<char> &data, char &c) {
   bool char_found = (bool)input.get(c);
   if (char_found) {
      if (c == '/' && (char)input.peek() == '/') {
         char temp;
         while (input.get(temp) && temp != '\n');
         if (temp != '\n')
            return false;
         else
            data.push_back(temp);
      } else
         data.push_back(c);
      return true;
   } else
      return false;
}

void read_until(istream &file, vector<char> &data, const char target) {
   char next;
   while (read_next(file, data, next) && next != target);
   if (next != target)
      throw ParsingException("read_until did not find target character");
}

void put_back(istream &file, vector<char> &data, char c) {
   file.putback(c);
   data.pop_back();
}
