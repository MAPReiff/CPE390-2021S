/*
  Write your code here for the required functions
  The makefile builds the code, assuming the functions here match the ones used
  in main
 */
#include <cmath>
using namespace std;

double hypotenuse(double a, double b) {
  double aSquare = a * a;
  double bSquare = b * b;
  double cSquare = aSquare + bSquare;
  double hyp = sqrt(cSquare);
  return hyp;
}

double mean(double a, double b) {
  double sum = a + b;
  double mean = sum / 2;
  return mean;
}
