%3)Defina la relación subconj(S, S1), donde S y S1 son listas
% representando conjuntos, que es verdadera si S1 es subconjunto de S.
subconj([S|Tail],[S1|Cola]):-
    %Compara elementos de la cabeza
    comprueba([S|Tail], [S1|Cola], [S1|Cola]).

%Se encuentra la sublista
comprueba([_|Tail],[], []):-
    comprueba(Tail,[], []).

comprueba([],[], [_|Aux]):-
    comprueba([],[], Aux).

comprueba([],[], []).

comprueba([],[_|Tail], [_|Aux]):-
    comprueba([], Tail, Aux),
    false.

comprueba([S|Tail], [S1|Cola], [Aux|Listado]):-
    S is S1,
    %Corta los elementos y sigue adelante
    comprueba(Tail, Cola, [Aux|Listado]);
    %Se corta el patron sublista
    comprueba(Tail, [Aux|Listado], [Aux|Listado]).
