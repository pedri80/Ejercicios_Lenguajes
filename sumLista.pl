%1)Defina sumlist(L, S). Que sea verdadero si S es la suma de los
% elementos de L.
%Caso base
sumList([], 0).
%Detecta L como lista
sumList([L|Tail], S) :-
    %Recorre la lista de izquierda a derecha
    sumList(Tail, S2),
    %Realiza la suma del elemento atrapado
    S is L+S2.

