#include <iostream>
using namespace std;

int sum(int a[], int n) {
  cout << n << endl;
  return n;
}

int main() {
  int a[5] = {5, 4, 9, 1, 7};
  sum(a, 5);
}