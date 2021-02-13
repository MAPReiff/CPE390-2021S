/*
	I pledge my honor that I have abided by the Stevens Honor System
	Author: Mitchell Reiff
*/

#include <iostream>
using namespace std;

int sum(const int x[], int length) {
	int sum = 0;
	for (int i = 0; i < length; i++) {
		sum += x[i];
	}
	return sum;
}

int main() {
	int a[10] = {5, 4, 6, 1, 2};  // 5 more zeros here...
	int ans = sum(a, 10);
	cout << ans << '\n';  // compute the sum of all elements = 5+4+6+1+2 =18

	int b[3] = {9, 1, -2};
	cout << sum(b, 3) << '\n';  // compute the sum of all elements = 9+1+-2=8
}
