frau(maria).
frau(martha).
frau(marta).
frau(marlies).
frau(mara).
frau(katharina).
frau(hannah).
frau(lulu).
frau(helga).
frau(waltraud).

mann(alois).
mann(wilfried).
mann(otto).
mann(hermann).
mann(ernst).
mann(paul).
mann(anton).
mann(mathias).
mann(lukas).
mann(lutz).
mann(lothar).
mann(hartmut).
mann(mathiaspaulanton).

elternteil(alois, maria).
elternteil(alois,wilfried).
elternteil(otto,hermann).
elternteil(paul,ernst).
elternteil(paul,anton).
elternteil(paul, marta).
elternteil(mathias,paul).
elternteil(hermann, lulu).
elternteil(lutz, lukas).
elternteil(lothar, katharina).
elternteil(lothar, hannah).
elternteil(anton, marlies).
elternteil(anton, hartmut).
elternteil(hartmut, mathiaspaulanton).
elternteil(paul, helga).
elternteil(martha,maria).
elternteil(martha,wilfried).
elternteil(maria,hermann).
elternteil(maria,ernst).
elternteil(maria,anton).
elternteil(maria, mara).
elternteil(waltraud, lulu).
elternteil(lulu, lukas).
elternteil(marlies, katharina).
elternteil(marlies, hannah).
elternteil(marta, hartmut).
elternteil(marta, marlies).
elternteil(mara, mathiaspaulanton).
elternteil(maria, helga).

verheiratet_mit(martha, alois).
verheiratet_mit(maria, paul).
verheiratet_mit(hermann, waltraud).
verheiratet_mit(anton, marta).
verheiratet_mit(hartmut, mara).
verheiratet_mit(marlies, lothar).

verheiratet(X, Y) :- verheiratet_mit(X, Y).
verheiratet(X, Y) :- verheiratet_mit(Y, X).

vater(X, Y) :- elternteil(X, Y), mann(X).
mutter(X, Y) :- elternteil(X, Y), frau(X).

%opa(alois, hermann) :- elternteil(alois, maria), elternteil(maria, hermann).
opa(X,Y) :- elternteil(X, Z), elternteil(Z, Y).
opa(X,Y) :- elternteil(X, Z), elternteil(Z, Y).

oma(X,Y) :- elternteil(X, Z), elternteil(Z, Y).
oma(X,Y) :- elternteil(X, Z), elternteil(Z, Y).

vorfahre(X,Y) :- elternteil(X,Y).  

geschwister(X, Y) :- mutter(Z,X), mutter(Z,Y), vater(V, X), vater(V, Y), X \= Y.
bruder(X,Y) :- geschwister(X, Y), mann(X).
schwester(X,Y) :- geschwister(X, Y), frau(X).

onkel(X, Y) :- elternteil(Z, Y), bruder(X, Z).
onkel(X, Y) :- elternteil(Z, Y), schwester(W, Z), verheiratet(X, W).
tante(X, Y) :- elternteil(Z, Y), schwester(X, Z).
tante(X, Y) :- elternteil(Z, Y), bruder(W, Z), verheiratet(X, W).

grossonkel(X, Y) :- elternteil(Z, Y), onkel(X, Z).
grosstante(X, Y) :- elternteil(Z, Y), tante(X, Z).

cousin(Mathias, Y) :- elternteil(Hartmut, Mathias), geschwister(Marlies, Hartmut), elternteil(Marlies, Y), mann(Mathias).
cousine(Mathias, Y) :- elternteil(Hartmut, Mathias), geschwister(Marlies, Hartmut), elternteil(Marlies, Y), frau(Mathias).

schwager(X, Y) :- geschwister(Z, Y), verheiratet(Z, X), mann(X).
schwaegerin(X, Y) :- geschwister(Z, Y), verheiratet(Z, X), frau(X).