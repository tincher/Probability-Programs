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

Clear[SimulateChain];
SimulateChain[n_, P_, stateslist_, startstate_, print_] :=
Block[{totallist = Table[0, {i, 1, Length[stateslist]}],
       state
      },
      state = Flatten[Position[stateslist, startstate]][[1]];
      For[j = 1, j <= n, j++,
          r = Random[];
          For[k = 1, k <= Length[stateslist], k++,
              r = r - P[[state]][[k]];
              If[r < 0,
                 state = k;
                 totallist[[k]] = totallist[[k]] + 1;
                 If[print, Print[stateslist[[state]]]];
                 Break[]
                ]
             ]       
         ];
      Print["State  Times  Fraction"];
      Print["  "];
      For[l = 1, l <= Length[totallist], l++,
          Print[stateslist[[l]],  "        ", 
                totallist[[l]], "     ",
                N[totallist[[l]]/n, 5]
               ]
         ];   
      Return[N[totallist/n,5]]
     ]