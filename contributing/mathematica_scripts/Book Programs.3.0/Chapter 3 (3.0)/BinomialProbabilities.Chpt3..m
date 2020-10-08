(***********************************************************************
This file was generated automatically by the Mathematica front end.
It contains Initialization cells from a Notebook file, which typically
will have the same name as this file except ending in ".nb" instead of
".m".

This file is intended to be loaded into the Mathematica kernel using
the package loading commands Get or Needs.  Doing so is equivalent to
using the Evaluate Initialiation Cells menu command in the front end.

DO NOT EDIT THIS FILE.  This entire file is regenerated automatically 
each time the parent Notebook file is saved in the Mathematica front end.
Any changes you make to this file will be overwritten.
***********************************************************************)

Clear[BinomialProbabilities];
BinomialProbabilities[n_, p_, kmin_, kmax_, print_] :=
Block[{subtotal = 0,
       v
      },
      If[print,
         Print["k   b[n, p, k]"];
         Print[" "];
        ];
      For[k = kmin, k <= kmax, k++,
          v = Bin[n, p, k];
          subtotal = subtotal + v;
          If[print,
             Print[k, "     ", N[v, 10]]
            ];
         ];
      Return[N[subtotal, 10]];
     ]