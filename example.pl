%aufgabe 1
count([], 0).
count([_|T], N) :- count(T, N1), N is N1 + 1.

% spielerei hehe
split(H,T, [H|T]).

%aufgabe 2
sum([], 0).
sum([H|T], N) :- sum(T, N1), N is N1 + H.


%aufgabe 3
frau(steffi).
frau(simone).
mann(timi).
mann(timo).

vater(timo, steffi).
vater(timo, timi).
mutter(scheuni, timi).
mutter(simone, steffi).

eltern(X, Y) :- vater(X, Z), mutter(Y, Z).
vorfahre(X, Y) :- vater(X, Y); mutter(X, Y).
bruder(X, Y) :- mann(X), vater(P1, X), vater(P1, Y), X \= Y.
geschwister(X, Y) :- vater(P1, X), vater(P1, Y), X \= Y.
geschwister(X, Y) :- frau(X), vater(P1, X), vater(P1, Y), X \= Y.

%aufgabe 4
mymember([], _) :- false.
mymember([H|T], X) :- H = X; mymember(T, X).

%aufgabe 5
zug(konstanz, singen, 07.52, 08.26).
zug(konstanz, singen, 17.52, 06.56).
zug(singen, berlin, 09.52, 13.26).
zug(berlin, newyork, 19.52, 22.26).
zug(berlin, hamburg, 05.38, 08.26).
zug(hinterdupfinge, unterleumdinge, 03.52, 03.26).
verbindung(X, Y, Z, [Y]) :- zug(X, Y, Z1, _), Z =< Z1.
verbindung(S, D, Z, [D1|W]) :- zug(S, D1, Z1, Z2), Z1 >= Z, verbindung(D1, D, Z2,W). 



