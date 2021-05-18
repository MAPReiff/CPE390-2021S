#include <iostream>
using namespace std;

double dot(double x[], double y[], int n) {
  double sum = 0;
  for (int i = 0; i < n; i++) {
    sum += x[i] * y[i];
  }
  return sum;
}

int main() {
  double x[3] = {1, 2, 4};
  double y[3] = {5, 3, 2};
  cout << dot(x, y, 3);
}