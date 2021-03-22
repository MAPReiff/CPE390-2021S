#include <cmath>
#include <cstdint>
#include <iostream>
#include <vector>
using namespace std;

double maxDistance(int x[][2], int length) {
  double res = 0;
  double width = 0;
  double height = 0;
  double dist = 0;

  for (int i = 0; i < length; i++) {
    for (int j = 0; j < length; j++) {
      width = x[i][0] - x[j][0];
      height = x[i][1] - x[j][1];
      dist = sqrt((width * width) + (height * height));
      if (dist > res) {
        res = dist;
      }
    }
  }
  return res;
}

// void compact(int x[], int length, int a, int b) {}

void print(int a[], int length) {
  for (int i = 0; i < length; i++) {
    cout << a[i] << " ";
    if (i == (length - 1)) {
      cout << endl;
    }
  }
}

int main() {
  int r2[4][2] = {{0, 0}, {0, 3}, {4, 3}, {5, 0}};
  double res = maxDistance(r2, 4);
  cout << res << endl;

  int r1[] = {1, 7, 3, 4, 5, 6, 2, 8, 3, 5};
  // compact(r1, 10, 2, 4);
  print(r1, 10);
}