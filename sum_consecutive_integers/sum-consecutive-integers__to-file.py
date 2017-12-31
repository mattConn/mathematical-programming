file = open("sum-consecutive-integers_10^6.txt","w")

MAX = 10**6
total = 0

for i in range(1,MAX+1):
	total += i
	file.write(str(total)+"\n")

file.close()
