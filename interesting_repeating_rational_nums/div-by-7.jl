# division by 7
# =============
#=
Division by 7 always produces this pattern in the mantissa:
1/7 = 0.142857... 
This script checks the offset (or position shift) of this pattern
for each quotient by checking the current pattern against the pattern in 1/7

example:
1/7 = 0.14285714285714285
2/7 = 0.2857142857142857
            ^ 
The offset here is 4 (original pattern has been shifted over 4 places).
=#

master = string(1/7)

println("quotient, offset from 1/7, offset from last quotient:")

last = '\0'
for i in 1:100
	current = string(i/7)
	last = current

	point = false # decimal point detection
	cindex = 1 # character index of quotient string current (1-indexed)
	
	# find decimal point to ignore
	while !point
		if current[cindex] == '.'
			point = true
		end

		cindex += 1
	end


	# count offset from master quotient
	masterOffset = 0
	while current[cindex] != master[3] && cindex < length(current)
		masterOffset += 1
		cindex +=1
	end


	println(i,"/7 : ",current, " : ", masterOffset)

end
