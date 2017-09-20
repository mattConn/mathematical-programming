# 2 vector point coordinates
v=[2,3, 3,2]
    
# show 2 vectors and resultant vector    
show(
plot(arrow( (0,0), (v[0],v[1]) ))+ #vector 1
plot(arrow( (v[0],v[1]), (v[0]+v[2], v[1]+v[3]), color="red" ))+ #vector 2, translated
plot(arrow( (0,0), (v[0]+v[2], v[1]+v[3]), color="purple" )) #resultant of vector 1 and 2
, figsize=4)
