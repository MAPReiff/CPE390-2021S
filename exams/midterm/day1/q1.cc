/*
    Complete the function sum so it calculates the sum of the
    even integers from a to b inclusive. For example:
    sumEven(3, 7) = 4 + 6 = 10
    sumEven(3, 8) = 4 + 6 + 8 = 18
    sumEven(6, 8) = 6 + 8 = 14
*/

#include <iostream>
using namespace std;

int sumEven(int a, int b) {
  if (a % 2 == 0) {
    a++;
  }
  int sum = 0;

  for (int i = a; i <= b; i += 2) {
    // s
    sum += i;
  }
  return sum;
}

int main() {
  cout << sumEven(3, 7);
}