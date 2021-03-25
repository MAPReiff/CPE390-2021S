#include <iostream>
using namespace std;

int main() {
  int a[3];
  int b[2][3] = {{1, 2, 3}, {4, 5, 6}};
  /*  b is 2 rows and 3 colums
      1 2 3
      4 5 6
      Memory goes by rows
  */
  int* p = &b[0][0];  // pointer to b[0][0]
  p++;
  cout << *p;    // 2
  cout << *++p;  // first ++p; then pring *p (3)

  struct Point {
    double x, y;
  };

  Point pnt[3][2] = {{{1.5, 2.0}, {2.1, -1.0}},
                     {{3.5, 5.3}, {2.1, -1.0}},
                     {{5, 2.2}, {-3.1, -1.0}}};

  double* p =
      (double*)&pnt[0][0];  // p is pointing at the first value (pnt[0][0].x)
  // in the first elemnt [0][0]
  p++;
  // now p is pointing to pnt[0][0].y
}