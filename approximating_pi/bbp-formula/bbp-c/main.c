/*
BBP Formula for approximating pi
================================

An infinite sum starting at k=0

	  1 	 4		2	   1 	  1
pi = ---- * ---- - ---- - ---- - ----
	 16^k   8k+1   8k+4   8k+5   8k+6
*/

#include <stdio.h>
#include <math.h>
#include "bbp-series-term.h"

int main()
{
	// first 10 terms of series
	for(int i = 0; i < 10; i++)
		printf("%.17f\n", term(i));
	
	return 0;
}
