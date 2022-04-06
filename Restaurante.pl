%3)-	Entradas: paella, gazpacho, consom�
% -	Carne: filete de cerdo, pollo asado
% -	Pescado: trucha, bacalao
% -	Postre: flan, nueces con miel, naranja
entrada(paella).
entrada(gazpacho).
entrada(consome).

carne(filleteDeCerdo).
carne(polloAsado).

pescado(trucha).
pescado(bacalao).

postre(flan).
postre(nuecesConMiel).
postre(naranja).

%-	Una raci�n de paella aporta 200 calor�as
%-	Una raci�n de gazpacho aporta 150 calor�as
%-	Una raci�n de consom� aporta 300 calor�as
%-	Una raci�n de filete de cerdo aporta 400 calor�as
%-	Una raci�n de pollo asado aporta 280 calor�as
%-	Una raci�n de trucha aporta 160 calor�as
%-	Una raci�n de bacalao aporta 300 calor�as
%-	Una raci�n de flan aporta 200 calor�as
%-	Una raci�n de nueces con miel aporta 500 calor�as
%-	Una raci�n de naranja aporta 50 calor�as
calorias(paella, 200).
calorias(gazpacho, 150).
calorias(consome, 300).
calorias(filleteDeCerdo, 400).
calorias(polloAsado, 280).
calorias(trucha, 160).
calorias(bacalao, 300).
calorias(flan, 200).
calorias(nuecesConMiel, 500).
calorias(naranja, 50).

% Reglas:
% 1) un plato principal es aquel que contiene o carne o pescado
% 2) una comida completa se compone de una entrada, un plato principal
% y un postre.
%Siendo que el valor cal�rico de una comida lo determina la suma de las calor�as de cada uno de sus componentes, escriba los predicados adicionales para consultar todas las comidas que no superen un m�ximo X de calor�as indicadas en dicha consulta.
platoCompleto(X,Y,Z, Calorias):-
    carne(X), entrada(Y), postre(Z),
    calorias(X,C1), calorias(Y,C2), calorias(Z,C3),
    Calorias >= C1+C2+C3;
    pescado(X), entrada(Y), postre(Z),
    calorias(X,C1), calorias(Y,C2), calorias(Z,C3),
    Calorias >= C1+C2+C3.
