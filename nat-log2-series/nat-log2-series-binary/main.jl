include("functions.jl")

log2 = 0.69314718055994506418215905796387232840061187744140625

k = 1
d = 15

s1 = getPartSum(modQuotient, k, d)

s2 = getPartSum(quotient, d+1, d+4)

s3 = s1 + s2

println(log(2))
println(s1, " + ", s2, " = ", s3)


println(d)
println(m2bin(log2), " : ln(2)")
for i in 1:d
	print(" ")
end
print("^\n")

println(m2bin(s3), " : approximation")
