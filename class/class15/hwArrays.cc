#include <iostream>
using namespace std;

int max(const int x[], int len);

int main() {
  int a[15] = {2, 5, 6, 3, 1};
  int b[4] = {9, 1, 2, 3};
  cout << max(a, 5) << endl;  // should print 6
  cout << max(b, 4) << endl;  // should print 9
}