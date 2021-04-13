#include <iostream>
using namespace std;

// the max it could handle would be 2147483647, which is the max value of int
// the max value of b would be 10070
int sumOddProduct(int x, int y) {
  int product = x * y;
  int sum = 0;
  for (int i = 0; i < product; i++) {
    if (i % 2 != 0) {
      sum = sum + i;
    }
  }
  return (sum);
}

int main() {
  cout << sumOddProduct(3, 4) << '\n';
  cout << sumOddProduct(10, 50) << '\n';
  cout << sumOddProduct(1000000, 10070) << endl;
}