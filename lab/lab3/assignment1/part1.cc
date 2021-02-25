#include <iostream>
using namespace std;

void collatz(int n) {
  while (n != 1) {
    // cout << n << endl;
    if (n % 2 == 0) {  // even
      n = n / 2;
      cout << n << endl;
    } else {
      n = 3 * n + 1;
      cout << n << endl;
    }
  }
  cout << n << endl;
}

int main() {
  int input = 0;
  cout << "Give me N: ";
  cin >> input;
  cout << endl;
  collatz(input);
}
