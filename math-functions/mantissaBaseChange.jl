# decimal mantissa to hexadecimal
function mantissaBaseChange(n,base)
	# a = Array{Int64}(0) # force casting of floats
	a = []

	n %= 1 # remove integer

	i = 0
	while i < 100
		n *= base
		ipart = convert(Int, floor(n)) # integer part

		if ipart >= 10
			push!(a, 'A'+ ipart - 10) # if base > 10, store appropriate char
		else
			push!(a, ipart) # store integer in array
		end

		n %= 1 # store mantissa in variable

		i += 1 # inc loop counter
	end


	println(join(a))
end

# test call
mantissaBaseChange(3.14159265358979323,16)
