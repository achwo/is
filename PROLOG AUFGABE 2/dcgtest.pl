% Autor:
% Datum: 16.04.2014

:-consult(stamm).
:-consult(dcg_old).
:-begin_tests(dcg).

test(wer_ist_onkel, [nondet]) :-
s(onkel(lothar, mathiaspaulanton), s(ip(wer), vp(v(sein), np(det(der), n(onkel))), pp(prae(von), pn(mathiaspaulanton))), [wer, ist, der, onkel, von, mathiaspaulanton], []).


:-end_tests(dcg).