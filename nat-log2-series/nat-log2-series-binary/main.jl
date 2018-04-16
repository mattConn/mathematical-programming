include("functions.jl")


k = 2
d = k^2

s1 = getPartSum(modQuotient, k, d)
# s2 = getPartSum(quotient, d+1, d+11) 
s2 = 0

s3 = s1 + s2

println(s1)
println(s2)
println(s3)

println(log(2))
println("ln2 and approximation in bin")

println( m2bin(1*log(2)) )
for i in 1:d
	print(" ")
end
print("^\n")
println( m2bin(s3) )
