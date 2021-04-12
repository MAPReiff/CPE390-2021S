#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <iostream>
using namespace std;

int main() {
  int x, i, sum;
  scanf(" %d", &x);

  sum = 0;
  i = 0;
  while (i < x)
    sum += i++;
  cout << sum << endl;
}