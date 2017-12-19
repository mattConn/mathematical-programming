plots = []
for b in range(-20,21):
    h = -b/2
    k = h^2+b*h
    
    plots.append( plot(x^2+b*x, (x,-10,10),color='blue') )
    plots.append(point2d((h, k), marker='o',color="red"))

# plot the additive inverse
plots.append(plot(-x^2,(x,-10,10), color='red'))
show(sum(plots),figsize=8)
