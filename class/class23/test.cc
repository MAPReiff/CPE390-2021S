#include <iostream>
using namespace std;

void f() {
  for (int i = 0; i < 10; i++)
    cout << i;
  cout << '\n';
}

int main() {
  f();
  return 0;
}