% Autor:
% Datum: 16.04.2014

consult(stamm).

lex(X, pn) :- mann(X).
lex(X, pn) :- frau(X).
lex(ist, sein, v, agr(3)).
lex(sein, sein, v, agr(1)).
lex(von, prae).
lex(onkel, n, m).
lex(tante, n, w).
lex(der, det, m).
lex(die, det, w).
lex(das, det, n).
lex(ein, det, n).
lex(wer, ip).

s(s(IP,VP,PP)) --> ip(IP),vp(VP, agr(3)),pp(PP).
s(s(VP,NP,PP)) --> vp(VP, agr(3)), np(NP), pp(PP).
vp(vp(V,NP), AGR) --> v(V, AGR),np(NP).
np(np(N)) --> n(N,_).
np(np(PN)) --> pn(PN).
np(np(DET,N)) --> det(DET, AGR),n(N, AGR).

pp(pp(PRAE,PN)) --> prae(PRAE),pn(PN).


pn(pn(PN)) --> [PN],{lex(PN,pn)}.
v(v(V), AGR) --> [X],{lex(X,V,v,AGR)}.
prae(prae(PRAE)) --> [PRAE],{lex(PRAE,prae)}.
det(det(DET),AGR) --> [DET],{lex(DET,det,AGR)}.
n(n(N), AGR) --> [N],{lex(N,n,AGR)}.
ip(ip(IP)) --> [IP],{lex(IP,ip)}.




