(* ::Package:: *)

f[domain_,degree_,a_,b_,c_]:=a*domain^degree+b*domain+c (*quadratic standard form*)
root[plusOrMinus_,a_,b_,c_]:=(-b+plusOrMinus*Sqrt[b^2-4*a*c])/2*a (*quadratic formula*)
vertex[firstRoot_,secondRoot_]:=(firstRoot+secondRoot)/2 (*average of roots*)

Manipulate[
	{
		Plot[{f[domain,degree,a,b,c],f[domain,degree2,a2,b2,c2]},
			{domain,xMin,xMax},
			ImageSize->Large,
			PlotLabel->StringForm["Domain: `` <= x <= ``",xMin,xMax],(*display domain*)
			PlotLegends-> {(*display equations in legend*)
				StringForm["``x^`` ``x ``",
					a,
					degree,
					NumberForm[b,NumberSigns->{"-", "+"}],
					NumberForm[c,NumberSigns->{"-", "+"}]
				],
				StringForm["``x^`` ``x ``",
					a2,
					degree2,
					NumberForm[b2,NumberSigns->{"-", "+"}],
					NumberForm[c2,NumberSigns->{"-", "+"}]
				]
			}
		],(*end plot*)
		{ (*display roots, vertex, y-intercept*)
			StringForm["\n Line 1:\n roots: (``,0), (``,0) \n vertex: (``,``) \n y-intercept: (0,``) \n \n Line 2:\n roots: (``,0), (``,0) \n vertex: (``,``) \n y-intercept: (0,``)",
				
				firstRoot=root[-1,a,b,c],
				secondRoot=root[1,a,b,c],
				vertex[firstRoot,secondRoot],
				f[vertex[firstRoot,secondRoot],degree,a,b,c],
				c,

				firstRoot2=root[-1,a2,b2,c2],
				secondRoot2=root[1,a2,b2,c2],
				vertex[firstRoot2,secondRoot2],
				f[vertex[firstRoot2,secondRoot2],degree,a2,b2,c2],
				c
			]
		}(*end display group*)
	},(*end manipulated group*)

	(*manipulation sliders and labels*)
	Style["Domain",Bold],
	{xMin,-20,19.999},{xMax,-19.999,20},(*domain*)
	Button["Reset",{xMin=-20,xMax=20}],
	"Sets domain to -20 <= x <= 20",
	Delimiter,

	Style["Line 1 (Blue)",Bold],
	{degree,-20,20},{a,-20,20},{b,-20,20},{c,-20,20},(*parabola 1*)
	Button["Reset",{degree=2, a=1, b=0, c=0}],
	"Sets this equation to y=x^2",
	Delimiter,

	Style["Line 2 (Yellow)",Bold],
	{degree2,-20,20},{a2,-20,20},{b2,-20,20},{c2,-20,20},(*parabola 2*)
	Button["Reset",{degree2=2, a2=1, b2=0, c2=0}],
	"Sets this equation to y=x^2",
	Delimiter,

	Button[Style["Reset All",Bold],{xMin=-20, xMax=20, degree=2, a=1, b=0, c=0, degree2=2, a2=1, b2=0, c2=0}],
	"Sets each equation to y=x^2,\nand domain to -20 <= x <= 20"
]
