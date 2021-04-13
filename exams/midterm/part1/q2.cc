/*
  Complete the following function that computes the average of an
    array of double precision numbers and subtracts the average from
    each element. This is called "de-meaning"
*/

#include <iostream>
using namespace std;

void demean(double x[], int len) {
  double mean = 0;
  for (int i = 0; i < len; i++) {
    mean += x[i];
  }
  mean /= len;

  for (int i = 0; i < len; i++) {
    x[i] -= mean;
  }
}