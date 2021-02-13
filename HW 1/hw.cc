/*
        I pledge my honor that I have abided by the Stevens Honor System
        Author: Mitchell Reiff
*/
#include <iostream>
using namespace std;

int sum(int a, int b) {
	int answer = 0;
	for (int i = a; i <= b; i++) {
		answer += i;
	}
	return answer;
}

long int sumOfSquares(int c) {  // did long just in case
	int answer = 0;
	for (int i = 0; i <= c; i++) {
		answer += i * i;
	}
	return answer;
}

unsigned fact(int num) {
	uint64_t total = 1;  // needs to be uint64
	for (int i = 1; i <= num; i++) {
		total *= i;  // total = total * uint64_t(i)
	}
	return total;
}

int main() {
	cout << sum(3, 6) << '\n';    // compute the sum 3 + 4 + 5 + 6
	cout << sum(5, 100) << '\n';  // compute the sum 5+6+7+...+100
	cout << fact(5) << '\n';      // 120
	for (int i = 1; i <= 25; i++)
		cout << i << ": " << fact(i) << '\n';
	// cout << fact(50) << '\n';
	cout << sumOfSquares(3) << '\n';  // compute 1*1 + 2*2 + 3*3 = 14
	cout << sumOfSquares(11)
	     << '\n';  // compute 1*1 + 2*2 + 3*3 + ... + 10*10+11*11
}

// It appears the hw file on github was modified since I had orginally pulled
// it. Here is the orginal main function.
/*
int main() {  // added line breaks to the first 2 lines to make it nicer
  cout << sum(3, 6) << '\n';    // compute the sum 3 + 4 + 5 + 6
  cout << sum(5, 100) << '\n';  // compute the sum 5+6+7+...+100
  cout << fact(5) << '\n';      // 120
  cout << fact(15) << '\n';     // 1.308e12
  cout << fact(25) << '\n';     // 1.551e25
  // cout << fact(50) << '\n';  // was this supposed to be commented out?
  cout << sumOfSquares(10) << '\n';  // print 1*1 + 2*2 + 3*3 + ... + 10*10
  cout << sumOfSquares(11);
  //      << '\n';  // print 1*1 + 2*2 + 3*3 + ... + 10*10+11*11
  return 1;
}
*/