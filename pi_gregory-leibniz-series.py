# pi = 4 * (1 - 1/3 + 1/5 - 1/7 + 1/9 - ...)

from decimal import *

MAX = 10**6

pi = 4.0
divisor = 1
sign = 1
for i in range(1,MAX+1):
	sign *= -1
	divisor += 2
	pi += sign*(4.0/divisor)

print Decimal.from_float(pi)
