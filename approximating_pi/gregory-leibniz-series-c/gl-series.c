#include <stdio.h>
#include <stdlib.h>

#define MAX_ITER 1.0E9

int main(int argc, char *argv[])
{
	double pi = argc < 2 ? 0 : atof(argv[1]);
	const double START_PI = pi;
		
	int sign = -1;
	for(int i = 0, j = 1; i <= MAX_ITER, j <= MAX_ITER*2; i++, j += 2)
	{
		pi += (sign *= -1) * (4.0/j);
		//printf("%.20f\n", pi);
	}

	printf("[start: %0.20f, MAX_ITER: %.0f]\n%0.20f\n", START_PI, MAX_ITER, pi);

	return 0;
}
