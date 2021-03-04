#include <iostream>
using namespace std;

int main() {
  int i = 1;
  while (i <= 10) {
    cout << i;
    i++;
  }
  cout << endl;

  for (int j = 1; j <= 10; j++) {
    cout << j;
  }
  cout << endl;
  cout << i << endl;

  for (int i = 10; i < 10; i++) {
    cout << i;
  }

  i = 10;

  do {  // do while loop
    cout << "do i=" << i;
    i++;
  } while (i <= 10);
}