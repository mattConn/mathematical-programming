#include <iostream>
#include <cstdlib>
#include <math.h>

//TODO: create dedicated factor loop fn 

using namespace std;

int main(int argc, char* argv[]) {

	if( argc < 2){
		cout << "Integer argument needed." << endl;
	} else {
		int n = atoi(argv[1]);
		
		for(int i = n; i >= sqrt(n); i-- ){
			// i % 2 == 0 ? "bar" : "";
			if (n % i == 0){
				cout << n/i << ", " << i << endl;
			}
		}
	}
	return 0;
}
