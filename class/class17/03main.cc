#include <iostream>
using namespace std;

void incstring(char* s) {}

int main() {
  char s[] = "hello";
  incstring(s);
  cout << s << endl;
}