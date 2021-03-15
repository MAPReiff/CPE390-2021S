int setBit(int a, int b) {
  int n = 0;
  n = 1 << b;    // n=1 shift over by b
  return a | n;  // or between a and n
}

int clearBit(int a, int b) {
  int n = 0;
  n = 1 << b;    // n=1 shift over by b
  return n ^ a;  // bitwise XOR between n and a
}

int flip(int a, int b) {
  b = a << b;    // b=a shift over by b
  return b ^ a;  // bitwise XOR between b and a
}

int replaceBits(int a, int b, int c) {
  int n = 0;
  n = a & b;     // n=a and b
  return n | c;  // or between n and c
}

int buildColor(int a, int b, int c) {
  a = a << 16;       // a=a shift 16
  b = b << 8;        // b=b shift 8
  return a | b | c;  // or between a b and c
}
