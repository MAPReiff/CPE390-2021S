#include <iostream>
using namespace std;

int sum(const int a[], int n);
void zero(int a[], int n);
#if 0
{
  int sum = 0;
  for (int i = 0; i<n;i++){
    sum+=a[i];
  }
  return sum
}
#endif

int main() {
  int x[] = {10, 20, 30, 40};
  // ldr r0, ????
  cout << sum(x, 4) << endl;
  zero(x, 4);
}