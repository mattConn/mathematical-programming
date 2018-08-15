#include <stdio.h>
#include <math.h>

int main()
{
	double s = 0; // sum

	int j = 1;
	for(double i = 1; i <= 1e5; i++)
	{
		s += i * i;

		if(log10(i) == j)
		{
			printf("10^%d : %f\n",j,s);
			j++;
		}
	}

	return 0;
}
