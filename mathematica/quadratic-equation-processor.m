(* ::Package:: *)

f[a_,b_,c_]:=a*x^2+b*x+c (*quadratic standard form*)
Manipulate[
	{
		Plot[{f[a,b,c],f[a2,b2,c2]},
			{x,-10,10},
			ImageSize->Large,
			PlotLegends-> {
				StringForm["``x^2 ``x ``",
					a,
					NumberForm[b,NumberSigns->{"-", "+"}],
					NumberForm[c,NumberSigns->{"-", "+"}]
				],
				StringForm["``x^2 ``x ``",
					a2,
					NumberForm[b2,NumberSigns->{"-", "+"}],
					NumberForm[c2,NumberSigns->{"-", "+"}]
				],
				"First Root",
				"Second Root",
				"Vertex x-coord.",
				"Vertex y-coord.",
				"y-intercept"
			}
		],(*end plot*)
		{ (*display roots, vertex, y-intercept*)
			StringForm["\n 1:\n roots: (``,0), (``,0) \n vertex: (``,``) \n y-intercept: (0,``) \n \n 
2:\n roots: (``,0), (``,0) \n vertex: (``,``) \n y-intercept: (0,``)",
				firstRoot=(-1*b-Sqrt[b^2-4*a*c])/2*a,
				secondRoot=(-1*b+Sqrt[b^2-4*a*c])/2*a,
				vertexXCoord=(firstRoot+secondRoot)/2,
				vertexYCoord=a*vertexXCoord^2+b*vertexXCoord+c,
				yIntercept=c,

			firstRoot=(-1*b2-Sqrt[b2^2-4*-a2*c2])/2*-a2,
				secondRoot=(-1*b2+Sqrt[b2^2-4*-a2*c2])/2*-a2,
				vertexXCoord=(firstRoot+secondRoot)/2,
				vertexYCoord=-a2*vertexXCoord^2+b2*vertexXCoord+c2,
				yIntercept=c2
			]
		}(*end display group*)
	},(*end manipulated group*)

	(*manipulation sliders*)
	{a,-20,20},{b,-20,20},{c,-20,20},(*parabola 1*)
	{a2,-20,20},{b2,-20,20},{c2,-20,20},(*parabola 2*)

	(*toggle terms*)
	(*parabola 1*)
	Control[{{a,0,"1: ax^2"},{1,0}}],
	Control[{{b,0,"bx"},{1,0}}],
	Control[{{c,0,"c"},{1,0}}],

	(*parabola 2*)
	Control[{{a2,0,"2: ax^2"},{1,0}}],
	Control[{{b2,0,"bx"},{1,0}}],
	Control[{{c2,0,"c"},{1,0}}]
]


(* ::InheritFromParent:: *)
(**)
