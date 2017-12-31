file = open("sum-consecutive-integers_x^2-comparison_10^6.csv","w")

MAX = 10**6
total = 0

file.write("sum,x^2,diff\n") #table header

for i in range(1,MAX+1):
	total += i
	file.write(str(total)+",") #current sum
	file.write(str(i**2)+",") #x^2
	file.write(str((i**2) - total)+"\n") #diff

file.close()
