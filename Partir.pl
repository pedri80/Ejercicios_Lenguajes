%5)Defina un predicado llamado partir(Lista, Umbral, Menores, Mayores)
% para dividir una lista respecto un umbral dado, dejando los valores
% menores a la izquierda y los mayores a la derecha.
% Default
partir([],_,[],[]).

partir([Num|Lista], Umbral, Menores, Mayores):-
    %Realiza la comparacion
    Num < Umbral,
    insertarMenor([Num|Lista], Umbral, Menores, Mayores),!;
    insertarMayor([Num|Lista], Umbral, Menores, Mayores),!.
%Inserta en la lista de menores
insertarMenor([Num|Lista], Umbral, [Num|Menores], Mayores):-
    partir(Lista, Umbral, Menores, Mayores).
%Inserta en la lista de mayores
insertarMayor([Num|Lista], Umbral, Menores, [Num|Mayores]):-
    partir(Lista, Umbral, Menores, Mayores).

