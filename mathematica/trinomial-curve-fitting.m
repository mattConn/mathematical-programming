(* ::Package:: *)

(* ::Input:: *)
(*Manipulate[*)
(*	{*)
(*		Plot[a*x^2+b*x+c,{x,-10,10},(*plot standard form*)*)
(*			PlotLabel->Style[ (*display standard form above plot*)*)
(*				StringForm["``x^2 ``x ``",*)
(*					a,*)
(*					NumberForm[b,NumberSigns->{"-", "+"}],*)
(*					NumberForm[c,NumberSigns->{"-", "+"}]*)
(*				],*)
(*			FontSize->24]*)
(*		],(*end plot*)*)
(*		{ (*display roots, vertex, y-intercept*)*)
(*			StringForm["\n roots: (``,0), (``,0) \n vertex: (``,``) \n y-intercept: (0,``) \n",*)
(*				firstRoot=(-1*b-Sqrt[b^2-4*a*c])/2*a,*)
(*				secondRoot=(-1*b+Sqrt[b^2-4*a*c])/2*a,*)
(*				vertexXCoord=(firstRoot+secondRoot)/2,*)
(*			vertexYCoord=a*vertexXCoord^2+b*vertexXCoord+c,*)
(*				yIntercept=c*)
(*			]*)
(*	}(*end display group*)*)
(*	},(*end manipulated group*)*)
(*	{a,-20,20},{b,-20,20},{c,-20,20}*)
(*]*)
