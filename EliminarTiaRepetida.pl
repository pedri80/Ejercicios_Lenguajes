masculino(angel).
masculino(pepe).
masculino(juan).
masculino(pedro).
masculino(enrique).
masculino(raul).
masculino(alfonso).
%Padre, Hijo/Hija
padre(angel, juan).
padre(angel, rosa).
padre(pepe, pedro).
padre(juan, ana).
padre(juan, enrique).
padre(pedro, raul).
padre(pedro, alfonso).
padre(pedro, cande).

femenino(petra).
femenino(carmen).
femenino(maria).
femenino(rosa).
femenino(ana).
femenino(cande).
%Madre, hijo, hija
madre(petra, juan).
madre(petra, rosa).
madre(carmen, pedro).
madre(maria, ana).
madre(maria, enrique).
madre(rosa, raul).
madre(rosa, alfonso).
madre(rosa, cande).

progenitor(X, Y) :- padre(X, Y).
progenitor(X, Y) :- madre(X, Y).

%abuelo, nieto
%               Abuelo, Hij@, Hij@, Nieto
abuelo(X, Y) :- padre(X, Z), progenitor(Z, Y).
abuela(X, Y) :- madre(X, Z), progenitor(Z, Y).

% 1)Escriba una regla para consultar la relación tía. En caso de no
% haber suficiente información familiar, ampliar los hechos existentes.

%Tia: hermana de padre o madre
%Tia, sobrin@
tia(X, Y) :-
% padre/madre, sobrin@ | abuel@, padre/madre | abuel@, tia
    progenitor(Z,Y), progenitor(A,Z), progenitor(A,X), femenino(X), X \= Z.
% 2)Escriba un predicado que elimine de la lista de todas las posibles
% soluciones encontradas para la consulta sobre tías para toda la base de
% datos, aquellos elementos repetidos.

sacarTia([],[]).

sacarTia([Tia|Tias],[Tia|Norepe]):-
    sacarTia(Tias, Norepe).

%Saca las tias repetidas
sacarTia([Tia|Tias], Norepe):-
    generaLista(Tia,Tias),!,
    sacarTia(Tias, Norepe).

%Genera la lista de tias
generaLista(Tia,[Tia|_]).

generaLista(Tia,[_|Tias]) :-
    generaLista(Tia,Tias).
% con varios ; muestra las dos listas, tias repetidas y al final sin
% repetidas
tias(X,Y,Lista,ListaSinRepe):-
    findall([X,Y], tia(X,Y), Lista),
    sacarTia(Lista,ListaSinRepe).
