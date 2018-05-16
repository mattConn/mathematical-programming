# Bailey–Borwein–Plouffe formula
# Include this file in a Julia program or repl session

# function
_bbp(x) = 1/16^x * ( 4/(8x+1) - 2/(8x+4) - 1/(8x+5) - 1/(8x+6) )

# series implementation
# Default iterations: 11 (from 0 to 10)
function bbp(;start=0, stop=10)
	a = 0
	for i in start:stop
		a += _bbp(i)
	end
	return a
end
