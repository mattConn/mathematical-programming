# single term of series
f(k) = 1/(k*2^k)

# accumulator
sum = 0

termNum = 0 # to store num. of last term in sum
for i in 1:100
	sum += f(i)

	# if next partial sum approaches infinity (Inf), break at current sum (last useful approximation)
	if( (sum + f(i+1)) == Inf)
		termNum = i	
		break
	end
end

# print results
println("a: ln2 via Julia log fn\nb: ln2 via series approximation\n")
println("a: ", log(2), "\nb: ", sum, " (Part. sum at term ", termNum,")")
