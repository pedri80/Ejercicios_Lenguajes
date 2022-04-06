%3)-	Entradas: paella, gazpacho, consomé
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

%-	Una ración de paella aporta 200 calorías
%-	Una ración de gazpacho aporta 150 calorías
%-	Una ración de consomé aporta 300 calorías
%-	Una ración de filete de cerdo aporta 400 calorías
%-	Una ración de pollo asado aporta 280 calorías
%-	Una ración de trucha aporta 160 calorías
%-	Una ración de bacalao aporta 300 calorías
%-	Una ración de flan aporta 200 calorías
%-	Una ración de nueces con miel aporta 500 calorías
%-	Una ración de naranja aporta 50 calorías
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
%Siendo que el valor calórico de una comida lo determina la suma de las calorías de cada uno de sus componentes, escriba los predicados adicionales para consultar todas las comidas que no superen un máximo X de calorías indicadas en dicha consulta.
platoCompleto(X,Y,Z, Calorias):-
    carne(X), entrada(Y), postre(Z),
    calorias(X,C1), calorias(Y,C2), calorias(Z,C3),
    Calorias >= C1+C2+C3;
    pescado(X), entrada(Y), postre(Z),
    calorias(X,C1), calorias(Y,C2), calorias(Z,C3),
    Calorias >= C1+C2+C3.
