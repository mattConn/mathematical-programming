/*
Gregory-Leibniz series for approximating Pi
===========================================

     4   4   4   4   4
pi = - - - + - - - + -  . . .
     1   3   5   7   9

*/

#include <stdio.h>
#include <stdlib.h>

//#define MAX 1.0E9

int main(int argc, char *argv[])
{
	const char PI[] = "3.1415926535897932385";
	double my_pi = 4.0; // initial value of pi
	int MAX = argc < 2 ? 1E6 : atoi(argv[1]); // max iterations; default to 1E6 if no argv

	int sign = 1;
	int divisor = 1;
	int counter = 0;
	while(counter < MAX)
	{
		divisor += 2;
		my_pi += (sign *= -1) * (4.0/divisor);
		counter++;
		//printf("%.19f\n",my_pi);
	}

	printf("\n%d Iterations\n%d/%d Last addition\n%.19f Calculated\n%s Actual\n\n", counter, (sign*4), divisor, my_pi, PI) ;

	return 0;
}
