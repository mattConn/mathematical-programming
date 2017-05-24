(* ::Package:: *)

(*standard quadratic form, no y-intercept*)
f[x_,b_]:=x^2+b*x

(*list of all plotted parabolas, points etc*)
plots={}

For[b=-20,b<=20,b++,
	AppendTo[plots,{
		Plot[x^2+b*x,{x,-16,16}],
		Graphics[{
			PointSize[Medium],
			Red,
			Point[{-b/2,(-b/2)^2+b*(-b/2)}] (*plot each parabola's vertex*)
		}]
	}](*end AppendTo*)
]

Show[plots]






