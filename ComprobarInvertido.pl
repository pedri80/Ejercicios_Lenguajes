%4)Defina la relación invertir(L, R) que es verdadera si R es la lista invertida de L.
invertir([L|Cola], R):-
   %Viaja hasta el final de L y se genera una lista auxiliar
   invertir(Cola, Aux),
   %agrega el L anterior a Aux
   estructurar(Aux, [L], R).

invertir([],[]).

%Verifica si los elementos son equivalentes
estructurar([],L,L):-
    comprobar(L,L).

%(R, Cabeza de L, R auxiliar)
estructurar([A|Tail], L,[A|Cola]):-
   %Recorta la lista auxiliar y R
    estructurar(Tail, L, Cola).

%Comprueba si coincide
comprobar([L|Cola], [R|Tail]):-
    L is R,
    comprobar(Cola, Tail).

comprobar([],[]).

