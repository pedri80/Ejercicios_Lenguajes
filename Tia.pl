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
    progenitor(Z,Y), progenitor(A,Z), madre(A,X), femenino(X), X \= Z.


