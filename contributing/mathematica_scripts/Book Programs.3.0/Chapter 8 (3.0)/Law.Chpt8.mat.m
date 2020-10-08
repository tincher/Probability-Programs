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

Clear[Law];
Law[nmin_, nmax_, inc_, p_, e_] :=
Block[{mean, lowerbound, upperbound, sum, c,
       nlist = {}, plist = {}, clist = {}, alist = {}
      },
      For[n = nmin, n <= nmax, n = n + inc,
          nlist = Append[nlist, n];
          mean = n*p;
          lowerbound = Floor[Max[0, mean - (n*e)]] + 1;
          upperbound = Floor[Min[n, mean + (n*e)]] - 1;
          sum = 0;
          For[k = lowerbound, k <= upperbound, k++,
              sum = sum + Bin[n, p, k]
             ];
          plist = Append[plist, 1 - sum];
          c = p*(1-p)/(n*(e^2));
          clist = Append[clist, c]
         ];
      alist = Table[{nlist[[i]], plist[[i]], clist[[i]]},
                    {i, 1, Length[nlist]}
                   ];
      Print[" n      P(|A_n - ",p,"| >= ",e,")    Chebyshev"];
      Print["  "];
      Print[TableForm[alist, TableSpacing -> {0,10}]]
	 ]