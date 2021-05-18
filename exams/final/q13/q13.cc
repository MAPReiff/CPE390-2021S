#include <iostream>
using namespace std;

double mmm(double x[], int n) {
  double mean = 0;
  double median = 0;
  for (int i = 0; i < n; i++) {
    mean += x[i];
  }
  mean = mean / n;

  if (n % 2 == 0) {
    // even
    double midU = x[(n / 2)];
    double midL = x[(n / 2) - 1];
    median = (midU + midL) / 2;
  } else {
    // odd
    int mid = n / 2;  // cpp round up
    median = x[mid];
  }
  return mean - median;
}

int main() {
  double a[] = {3.0, 4.0, 5.0, 6.0, 9.0};       // average is 27/5  median = 5.0
  cout << mmm(a, 5) << '\n';                    // prints out 27/5-5 = 0.4
  double b[] = {3.0, 4.0, 5.0, 6.0, 7.0, 9.0};  // average = 34/6 median = 5.5
  cout << mmm(b, 6) << '\n';  // prints out 34/6-5.5=0.16666666
}