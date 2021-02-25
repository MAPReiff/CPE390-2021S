// need to make prod function - return the product of the integers from a to b
// inclusive need to make max function - return the maximum value contained in
// array (x) of size n.

#include <iostream>
using namespace std;

int prod(int a, int b) {
  // Mitchell Reiff
  int prod = 1;
  for (int i = a; i <= b; i++) {
    prod = prod * i;
  }
  return prod;
}

int max(int x[], int length) {
  // Mitchell Reiff
  int max = 0;
  for (int i = 0; i < length; i++) {
    if (max <= x[i]) {
      max = x[i];
    }
  }
  return max;
}

int main() {
  // cout << prod(1, 5);
  int length = 10;
  int x[length] = {1000, 2, 67, 32, 10010, 22, -2};
  cout << max(x, length);
}