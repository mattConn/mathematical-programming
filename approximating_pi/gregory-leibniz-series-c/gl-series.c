/*
Gregory-Leibniz series for approximating Pi
===========================================

     4   4   4   4   4
pi = - - - + - - - + -  . . .
     1   3   5   7   9

*/

#include <stdio.h>
#include <stdlib.h>

// 20 digits of pi (rounded up)
#define PI 3.1415926535897932385

#define MAX_ITER 1.0E9

int main(int argc, char *argv[])
{
	double my_pi = argc < 2 ? 0 : atof(argv[1]); // initial value of pi; default to 0 if no argument in argv
		
	int sign = -1;
	int divisor = 1;
	for(int i = 0; i <= MAX_ITER; i++)
	{
		my_pi += (sign *= -1) * (4.0/divisor);
		divisor += 2;
	}

	printf("%.19f Calculated\n%.19f Actual\n", my_pi, PI) ;

	return 0;
}
