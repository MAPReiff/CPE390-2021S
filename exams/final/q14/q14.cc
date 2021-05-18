#include <iostream>
using namespace std;

void deltaEncode(double x[], int n) {
  double tmp[n];
  for (int i = 0; i < n; i++) {
    tmp[i] = x[i];
  }

  for (int i = 0; i < n; i++) {
    if (i == 0) {
      x[i] = tmp[i];
    } else {
      x[i] = tmp[i] - tmp[i - 1];
    }
  }
}

int main() {
  double x[] = {1.5, 2.6, 3.7, 4.8, 5.95};
  deltaEncode(x, 5);
  // after call, x = {1.5, 1.1, 1.1, 1.1, 1.15}
  for (int i = 0; i < 5; i++) {
    cout << x[i] << ", " << endl;
  }
}