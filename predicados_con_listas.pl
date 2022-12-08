%1.- Pertenece 
% Verificar si un elemento pertenece a una lista dada.

pertenece(X, [X|_]).
pertenece(X, [_|Y]):- pertenece(X,Y).

%2. Size 
% Obtener la longitud de una lista.

size([_],1).
size([],0).
size([_|Xs],R):- size(Xs,Y), R is Y+1.

%3. Concatenar
% Obtener la concatenación de 2 listas dadas..

concatenar(L1,[],L1).
concatenar([],L2,L2).
concatenar([H1|T1], L2, [H1|R]):- concatenar(T1,L2,R).

%4. Eliminar
% Eliminar un elemento de una lista

eliminar(_,[],[]).
eliminar(E, [E|Tail],Tail).
eliminar(E, [X|Tail], [X|R]):- eliminar(E, Tail,R).

%5. Agregar un elemento a una lista
% Agregar un elemento a una lista.

agregar(X,L,[X|L]).

%6. Par e impares.
% Separar una lista en 2 listas (pares e impares).   

par_impar([],[],[]).
par_impar([X|Xs],[P|Ps],Is) :- X mod 2 =:=0, P is X, par_impar(Xs,Ps,Is).
par_impar([X|Xs],Ps,[I|Is]) :- X mod 2 =\=0, I is X, par_impar(Xs,Ps,Is).

%7. Ascendente
% Verifica si una lista se encuentra de manera ascendente.

asc([_]).
asc([X1,X2|Tail]):- X1 < X2, asc([X2|Tail]).

%8. Descendente
% Verifica si una lista se encuentra de manera descendente.

des([_]).
des([X1,X2|Tail]):- X1 > X2, des([X2|Tail]).

%9. Aplanar
% aplanar(L, A), donde L es en general una lista de listas,
% tan compleja en su anidamiento como queramos imaginar, y A es la lista 
% que resulta de reorganizar los elementos contenidos en las listas anidadas en un único nivel.

aplanar([],[]).
aplanar([X|Xs], [X|R]) :- atomic(X), aplanar(Xs,R).
aplanar([X|Xs], R) :- not(atomic(X)), aplanar(X, RX), aplanar(Xs, RXs), append(RX, RXs, R).

%10. Menor que head.
% Obtener una lista con elementos menores que el elemento HEAD.

menorHead([],[]).
menorHead([_],[]).
menorHead([X1,X2|Tail],[X2|L]) :- X1 > X2, menorHead([X1|Tail],L).
menorHead([X1,X2|Tail],L) :- X1 < X2, menorHead([X1|Tail],L).
menorHead([X1,X2|Tail],L) :- X1 =:= X2, menorHead([X1|Tail],L).

%11. Mayor que head.
% Obtener una lista con elementos mayores que el elemento HEAD.

mayorHead([],[]).
mayorHead([_],[]).
mayorHead([X1,X2|Tail],[X2|L]) :- X1<X2, mayorHead([X1|Tail],L).
mayorHead([X1,X2|Tail],L) :- X1>X2, mayorHead([X1|Tail],L).
mayorHead([X1,X2|Tail],L) :- X1=:=X2, mayorHead([X1|Tail],L).

%12. Invertir
% Obtener una lista con los elementos invertidos.

invertir([],[]).
invertir([X|Xs],L):- invertir(Xs,R), concat(R,[X],L).
concat([],L,L).
concat([X|L1],L2,[X|L3]):- concat(L1,L2,L3).