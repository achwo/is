:-begin_tests(stammbaum).
:-consult(stamm).

test(frau) :- frau(maria).
test(mann) :- mann(alois).

test(vater) :- vater(alois,maria).
test(mutter) :- mutter(martha,maria).

test(vater,[fail]) :- vater(martha,maria).

test(opa) :- opa(alois, hermann).
test(oma) :- oma(martha, hermann).

test(vorfahre_vater) :- vorfahre(alois, maria).
test(vorfahre_mutter) :- vorfahre(martha, maria).

test(geschwister) :- geschwister(ernst, anton).
test(bruder) :- bruder(ernst, anton).
test(schwester) :- schwester(katharina, hannah).

test(onkel) :- onkel(hartmut, hannah).
test(tante) :- tante(marlies, mathiaspaulanton).

test(grossonkel) :- grossonkel(ernst, hannah).
test(grosstante) :- grosstante(helga, hannah).

test(cousin) :- cousin(mathiaspaulanton, katharina).
test(cousine) :- cousine(hannah, mathiaspaulanton).

:- end_tests(stammbaum).