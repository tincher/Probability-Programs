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

Clear[LawContinuous];
LawContinuous[nmin_, nmax_, inc_, e_] :=
Block[{narea, p, c,
       nlist = {}, plist = {}, clist = {}, alist = {}
      },
      For[n = nmin, n <= nmax, n = n + inc,
          nlist = Append[nlist, n];
          p = 1 - NormalArea[-(Sqrt[n]*e), (Sqrt[n]*e)];
          plist = Append[plist, p];
          c = 1/(n*(e^2));
          clist = Append[clist, c]
         ];
      alist = Table[{nlist[[i]], plist[[i]], clist[[i]]},
                    {i, 1, Length[nlist]}
                   ];
      Print[" n         P(|S_n/n| >= ",e,")    Chebyshev"];
      Print["  "];
      Print[TableForm[alist, TableSpacing -> {0,10}]]
     ]