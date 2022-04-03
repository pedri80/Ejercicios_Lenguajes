%2)Defina dos predicados largopar(L) y largoimpar(L) que verdaderos si los largos de la lista L son par o impar respectivamente.
recorre([], L):-
    %Es impar O par
    largoimpar(L);
    largopar(L).

recorre([_|Tail], L):-
    %Largo de lista
    L2 is L+1,
    %Recorta la lista (elimina el primer elemento de la lista)
    recorre(Tail,L2).

largo_par_impar(Tail):-
    recorre(Tail,0).


%mod es la division particular
largopar(L):- X is L mod 2, X == 0.
largoimpar(L):- X is L mod 2, X == 1.

