a=[]
n=0
for i in range(1,10+1):
    n+=i
    a.append(point((i,n)))
    if(i>1):
        a.append(line([(i-1,n-i),(i,n)]))

show(
plot(sum(a)),
figsize=5
)
