#include <stdio.h>
#include <math.h>

int main()
{
	unsigned long long s = 0; // sum

	int j = 1;
	for(unsigned long long i = 1; i <= 1e6; i++)
	{
		s += i * i;

		if(log10(i) == j)
		{
			printf("10^%d : %llu\n",j,s);
			j++;
		}
	}

	return 0;
}
