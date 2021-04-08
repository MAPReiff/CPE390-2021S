#include <iostream>
using namespace std;

extern int square(const int a[], int length);

int main() {
  int a[5] = {1, 2, 3, 4, 5};
  square(a, 5);
}