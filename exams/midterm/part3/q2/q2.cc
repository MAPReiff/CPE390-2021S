#include <iostream>
using namespace std;

void sumProdSquares(int a[], int b[], int length) {
  int prod = 0;
  int sum = 0;
  for (int i = 0; i < length; i++) {
    prod = a[i] * b[i] * a[i] * b[i];
    sum = sum + prod;
  }
  for (int i = 0; i < length; i++) {
    a[i] = a[i] - sum;
    b[i] = b[i] - sum;
  }
}

int main() {
  int a[] = {2, 3, 2, 6, 5};
  int b[] = {3, 4, 1, 4};

  sumProdSquares(a, b, 3);
}