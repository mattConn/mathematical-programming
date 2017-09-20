# 2 vector point coordinates
v=[2,3, 3,2]

# range slider for vector points with def. starting point
def r(d):
    return slider(-10,10,step_size=1,default=d)

# show 2 vectors and resultant vector
@interact
def vectors(x1=r(1),y1=r(0),x2=r(0),y2=r(1)):
    show(
    plot(arrow( (0,0), (x1,y1), legend_label="(x1,y1)", legend_color="blue"))+ #vector 1
    plot(arrow( (x1,y1), (x1+x2, y1+y2), legend_label="(x2,y2)", legend_color="red", color="red" ))+ #vector 2, translated
    plot(arrow( (0,0), (x1+x2, y1+y2), color="purple", legend_label="v1+v2", legend_color="purple" )) #resultant of vector 1 and 2
    , figsize=4)
