#include <iostream>
using namespace std;

int sumav(int a[], int b[], int length);

int main() {
  int a[] = {1, 2, 3, 4};
  int b[] = {2, 3, 1, 6};
  cout << sumav(a, b, 4);
}