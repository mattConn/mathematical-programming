(* ::Package:: *)

f[x_,a_,b_,c_]:=a*x^2+b*x+c (*quadratic standard form*)
root[a_,b_,c_,plusOrMinus_]:=(-b+plusOrMinus*Sqrt[b^2-4*a*c])/2*a (*quadratic formula*)
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
				],
				"First Root",
				"Second Root",
				"Vertex x-coord.",
				"Vertex y-coord.",
				"y-intercept"
			}
		],(*end plot*)
		{ (*display roots, vertex, y-intercept*)
			StringForm["\n 1:\n roots: (``,0), (``,0) \n vertex: (``,``) \n y-intercept: (0,``) \n \n 2:\n roots: (``,0), (``,0) \n vertex: (``,``) \n y-intercept: (0,``)",
				
				firstRoot=root[a,b,c,-1],
				secondRoot=root[a,b,c,1],
				vertex[firstRoot,secondRoot],
				f[vertex[firstRoot,secondRoot],a,b,c],
				c,

				firstRoot2=root[a2,b2,c2,-1],
				secondRoot2=root[a2,b2,c2,1],
				vertex[firstRoot2,secondRoot2],
				f[vertex[firstRoot2,secondRoot2],a2,b2,c2],
				c
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


(* ::Output:: *)
(*Manipulate[{Plot[{f[x, a, b, c], f[x, a2, b2, c2]}, {x, -10, 10}, ImageSize -> Large, *)
(*    PlotLegends -> {StringForm["``x^2 ``x ``", a, NumberForm[b, NumberSigns -> {"-", "+"}], NumberForm[c, NumberSigns -> {"-", "+"}]], *)
(*      StringForm["``x^2 ``x ``", a2, NumberForm[b2, NumberSigns -> {"-", "+"}], NumberForm[c2, NumberSigns -> {"-", "+"}]], "First Root", "Second Root", "Vertex x-coord.", "Vertex y-coord.", *)
(*      "y-intercept"}], {StringForm["\n 1:\n roots: (``,0), (``,0) \n vertex: (``,``) \n y-intercept: (0,``) \n \n 2:\n roots: (``,0), (``,0) \n vertex: (``,``) \n y-intercept: (0,``)", *)
(*     firstRoot = root[a, b, c, -1], secondRoot = root[a, b, c, 1], vertex[firstRoot, secondRoot], f[vertex[firstRoot, secondRoot], a, b, c], c, firstRoot2 = root[a2, b2, c2, -1], *)
(*     secondRoot2 = root[a2, b2, c2, 1], vertex[firstRoot2, secondRoot2], f[vertex[firstRoot2, secondRoot2], a2, b2, c2], c]}}, {{a, 1}, -20, 20}, {{b, 0}, -20, 20}, {{c, 0}, -20, 20}, *)
(*  {{a2, -1}, -20, 20}, {{b2, 0}, -20, 20}, {{c2, 0}, -20, 20}, {{a, 1, "1: ax^2"}, {1, 0}}, {{b, 0, "bx"}, {1, 0}}, {{c, 0, "c"}, {1, 0}}, {{a2, -1, "2: ax^2"}, {1, 0}}, {{b2, 0, "bx"}, {1, 0}}, *)
(*  {{c2, 0, "c"}, {1, 0}}]*)
