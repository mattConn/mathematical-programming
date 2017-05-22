(* ::Package:: *)

f[x_,b_]:=x^2+b*x

plots={}

For[b=-20,b<=20,b++,
	AppendTo[plots,{
		Plot[{f[x,b]},{x,-16,16}],
		Graphics[{
			PointSize[Medium],
			Red,
			Point[{-b/2,(-b/2)^2+b*(-b/2)}]
		}]
	}](*end AppendTo*)
]

Show[plots]
