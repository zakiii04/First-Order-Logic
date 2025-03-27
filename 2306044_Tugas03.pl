% Fakta jenis kelamin
laki_laki(david).
laki_laki(jack).
laki_laki(john).
laki_laki(ray).
laki_laki(peter).

perempuan(amy).
perempuan(karen).
perempuan(susan).
perempuan(liza).
perempuan(mary).

% Fakta pernikahan
menikah(david, amy).
menikah(jack, karen).
menikah(john, susan).

% Fakta hubungan orang tua dan anak
orang_tua(david, liza).
orang_tua(amy, liza).
orang_tua(david, john).
orang_tua(amy, john).

orang_tua(jack, ray).
orang_tua(karen, ray).
orang_tua(jack, susan).

orang_tua(john, peter).
orang_tua(susan, peter).
orang_tua(john, mary).
orang_tua(susan, mary).

% Aturan keluarga
ayah(X, Y) :- laki_laki(X), orang_tua(X, Y).
ibu(X, Y) :- perempuan(X), orang_tua(X, Y).
anak(X, Y) :- orang_tua(Y, X).
saudara_kandung(X, Y) :- orang_tua(Z, X), orang_tua(Z, Y), X \= Y.
kakek(X, Y) :- laki_laki(X), orang_tua(X, Z), orang_tua(Z, Y).
nenek(X, Y) :- perempuan(X), orang_tua(X, Z), orang_tua(Z, Y).
cucu(X, Y) :- kakek(Y, X).
cucu(X, Y) :- nenek(Y, X).
