#include <iostream>
using namespace std;

int count(int n) {
  int count = 0;
  for (int i = 1; i <= n; i++) {
    count++;
  }
  return count;
}

int countDown(int n) {
  int count = n;
  for (int i = n; i >= 0; i--) {
    count--;
  }
  return count;
}

int sum(int a, int b) {
  return a + b;
}

int main() {
  count(5);
  countDown(10);
  sum(5, 10);

}