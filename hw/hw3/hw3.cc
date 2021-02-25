// hw3: passing arrays to functions

/*
        I pledge my honor that I have abided by the Stevens Honor System
        Author: Mitchell Reiff
*/

#include <iostream>
using namespace std;

void init(int arr[], int len, int val) {
	for (int i = 0; i < len; i++) {
		arr[i] = val;
		// cout << arr[i];  // testing
	}
}

double mean(int arr[], int len) {
	double sum = 0;
	for (int i = 0; i < len; i++) {
		sum += arr[i];
		// cout << sum << endl;     //testing
	}
	double mean = sum / len;
	return mean;
}

int main() {
	const int A_SIZE = 10;
	int a[A_SIZE];
	init(a, A_SIZE, -3);  // your function should set every element of a to -3
	a[4] = 92;
	constexpr int B_SIZE = 12;
	int b[B_SIZE];
	init(b, B_SIZE, 5);  // your function should set every element of b to 5
	// MEAN should return double
	cout << mean(a, A_SIZE);  // Remember, just because it's integers doesn't mean the answer is(1 + 2 + 3 + 4) / 4 = 2.5

	/* ideas for future homework
   compute the sum of an array
   compute the average of an array
   compute the product
   reverse the values in an array
  */
}