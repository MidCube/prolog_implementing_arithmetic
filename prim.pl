prim(0, z).
prim(N, s(Prim)) :-
    Prev is N-1,
    prim(Prev, Prim).

num(z,0).
num(s(Prim),Num):-
    num(Prim,Prev),
    Num is Prev+1.


:- prim(0, A),
   format('Primitive representation of 0 is ~w~n', A).
:- prim(3, A),
   format('Primitive representation of 3 is ~w~n', A).
