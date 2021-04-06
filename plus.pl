:- [prim].

plus(z,B,B).
plus(s(A), B, C) :-
    plus(A,s(B),C).

:- plus(s(s(z)), s(s(s(z))), R),
   format('s(s(z)) plus s(s(s(z))) is ~w~n', R).
