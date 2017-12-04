#include <iostream>
#include <cstdlib>

using namespace std;

int main( int argc, char* argv[] )
{
	
	// float values [4] = {0.25, 0.10, 1.05, 0.01};

	// if(argc < 1 || argc > 4){
	/*
	if(argc < 1 || argc > 5){
		cout << "" << endl;
	} else {
		for(int i = 1; i < argc; i++)
		{
			cout << atoi(argv[i]) * values[i-1] << endl;
		}
	}
	*/
	
	int quarters;
	int dimes;
	int nickels;
	int pennies;

	cout << "Enter number of quarters." << endl;
	cin >> quarters;

	cout << "Enter number of dimes." << endl;
	cin >> dimes;
	
	cout << "Enter number of nickels." << endl;
	cin >> nickels;

	cout << "Enter number of pennies." << endl;
	cin >> pennies;

	cout << "\n$" 
		<< (quarters * 0.25) + (dimes * 0.10) + (nickels * 0.05) + (pennies * 0.01)
	<< endl;

	cin.get();	
	return 0;
}
