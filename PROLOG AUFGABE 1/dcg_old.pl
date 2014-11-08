% Autor:
% Datum: 16.04.2014

consult(stamm).

lex(X, X, pn) :- mann(X).
lex(X, X, pn) :- frau(X).
lex(ist, sein, v, agr(3)).
lex(sein, sein, v, agr(1)).
lex(von, prae).
lex(onkel, onkel, n, m).
lex(tante, tante, n, w).
lex(grossonkel, grossonkel, n, m).
lex(grosstante, grosstante, n, w).
lex(cousin, cousin, n, m).
lex(cousine, cousine, n, w).
lex(schwager, schwager, n, m).
lex(schwaegerin, schwaegerin, n, w).
lex(opa, opa, n, m).
lex(oma, oma, n, w).
lex(vorfahre, vorfahre, n, n).
lex(bruder, bruder, n, m).
lex(schwester, schwester, n, w).
lex(der, det, m).
lex(die, det, w).
lex(das, det, n).
lex(ein, det, m).
lex(eine, det, w).
lex(wer, ip).

s(SemS, s(IP,VP,PP)) --> ip(IP),vp(SemVP, VP, agr(3)), pp(SemPP, PP), {SemVP = [_,SemTante|_], SemS =.. [SemTante, _, SemPP]} .
s(SemS, s(VP,NP,PP)) --> vp(SemVP, VP, agr(3)), np(SemNP, NP), pp(SemPP, PP), {SemVP = [_, SemKurt|_], SemS =.. [SemNP, SemKurt, SemPP]}.
vp([SemV, SemNP], vp(V,NP), AGR) --> v(SemV, V, AGR),np(SemNP, NP).
np(SemN, np(N)) --> n(SemN, N, _).
np(SemPN, np(PN)) --> pn(SemPN, PN).
np(SemN, np(DET,N)) --> det(DET, AGR),n(SemN, N, AGR).

pp(SemPN, pp(PRAE,PN)) --> prae(PRAE),pn(SemPN, PN).


pn(SemPN, pn(SemPN)) --> [PN],{lex(PN,SemPN,pn)}.
v(SemV, v(SemV), AGR) --> [X],{lex(X,SemV,v,AGR)}.
prae(prae(PRAE)) --> [PRAE],{lex(PRAE,prae)}.
det(det(DET),AGR) --> [DET],{lex(DET,det,AGR)}.
n(SemN, n(SemN), AGR) --> [X],{lex(X, SemN,n,AGR)}.
ip(ip(IP)) --> [IP],{lex(IP,ip)}.




