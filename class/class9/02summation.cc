#include <iostream>
using namespace std;

int sum(int v);  // naming a function with para,eters but not writing a function

int main() {
  cout << sum(100) << '\n';
}

// g++ 02susmation.s 02susmation.cc will compile both the cpp and asm together