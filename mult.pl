:- [plus].

mult(z,_,z).
mult(_,z,z).
mult(s(z),A,A).
mult(s(A), B, C) :-!,
    mult(A,B,Temp),
    plus(B,Temp,C).

:- mult(s(s(z)), s(s(s(z))), R),
   format('s(s(z)) times s(s(s(z))) is ~w~n', R).
