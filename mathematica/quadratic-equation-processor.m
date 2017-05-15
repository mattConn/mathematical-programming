(* ::Package:: *)

f[x_,a_,b_,c_]:=a*x^2+b*x+c (*quadratic standard form*)
f[x_,a_,b_,c_]:=a*x^2+b*x+c
root[plusOrMinus_,a_,b_,c_]:=(-b+plusOrMinus*Sqrt[b^2-4*a*c])/2*a (*quadratic formula*)
vertex[firstRoot_,secondRoot_]:=(firstRoot+secondRoot)/2

Manipulate[
	{
		Plot[{f[x,a,b,c],f[x,a2,b2,c2]},
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
				]
			}
		],(*end plot*)
		{ (*display roots, vertex, y-intercept*)
			StringForm["\n 1:\n roots: (``,0), (``,0) \n vertex: (``,``) \n y-intercept: (0,``) \n \n 2:\n roots: (``,0), (``,0) \n vertex: (``,``) \n y-intercept: (0,``)",
				
				firstRoot=root[-1,a,b,c],
				secondRoot=root[1,a,b,c],
				vertex[firstRoot,secondRoot],
				f[vertex[firstRoot,secondRoot],a,b,c],
				c,

				firstRoot2=root[-1,a2,b2,c2],
				secondRoot2=root[1,a2,b2,c2],
				vertex[firstRoot2,secondRoot2],
				f[vertex[firstRoot2,secondRoot2],a2,b2,c2],
				c
			]
		}(*end display group*)
	},(*end manipulated group*)

	(*manipulation sliders*)
	"Curve 1 (Blue)",
	{a,-20,20},{b,-20,20},{c,-20,20},(*parabola 1*)
	Delimiter,
	"Curve 2 (Yellow)",
	{a2,-20,20},{b2,-20,20},{c2,-20,20},(*parabola 2*)
	Delimiter,
	Button["Set both equations to y=x^2",{a=1,b=0,c=0,a2=1,b2=0,c2=0}]
]


(* ::InheritFromParent:: *)
(**)
