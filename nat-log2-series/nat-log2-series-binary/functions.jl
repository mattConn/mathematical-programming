quotient(k, d) = (2^(d-k))/k
modQuotient(k, d) = (2^(d-k) % k)/k

function getPartSum(f, k, d)
	a = 0
	for i in k:d
		a += f(i, d)
	end
	return a
end

# decimal mantissa to bin
function m2bin(n)
	a = Array{Int64}(0) # force casting of floats

	n -= floor(n) # remove integer

	i = 0
	while i < 100
		n *= 2
		push!(a, n - (n - floor(n)) ) # store integer in array
		n -= floor(n) # store mantissa in variable

		i += 1
	end


	return join(a)
end
