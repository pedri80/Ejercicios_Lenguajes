%3)Defina la relación subconj(S, S1), donde S y S1 son listas
% representando conjuntos, que es verdadera si S1 es subconjunto de S.
subconj([S|Tail],[S1|Cola]):-
    %Compara elementos de la cabeza
    S is S1,
    %Corta los elementos y sigue adelante
    subconj(Tail,Cola);
    %Se corta el patron sublista
    subconj(Tail, [S1|Cola]).

subconj([],[]).

%Se encuentra la sublista
subconj([_|Tail],[]):-
    subconj(Tail,[]).



