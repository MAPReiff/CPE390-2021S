#include <iostream>
using namespace std;

int main() {
  int a = 0xABCE7651;
  // bitmask: remove the 6
  int mask = 0x00000F00;
  int b = a & mask;  // keeps ONLY the 6
  // b = 0x00000600
  b = a & ~mask;  // 6 is removed
  // b = 0xABCE7051
  cout << hex << b << endl;

  // give me the 14th bit of a
  int c = a & (1 << 14);
  // a = xxxxxxxxxxyxxxxxxxxxxxxx
  // c = 0000000000y0000000000000
}