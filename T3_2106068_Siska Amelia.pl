perempuan(susan).
perempuan(mary).
perempuan(liza).
perempuan(amy).
perempuan(karen).
lakilaki(david).
lakilaki(john).
lakilaki(ray).
lakilaki(jack).
lakilaki(peter).

pasangan(david,amy).
pasangan(jack,karen).
pasangan(john,susan).
anakA(david,liza).
anakA(david,john).
anakA(jack,susan).
anakA(jack,ray).
anakA(john,peter).
anakA(john,mery).
anakI(amy,liza).
anakI(amy,john).
anakI(karen,susan).
anakI(karen,ray).
anakI(susan,peter).
anakI(susan,mery).
besan(david,jack).
besan(amy,karen).

is_laki(X) :-laki(X).
is_perempuan(Y) :-perempuan(Y).
is_pasangan(X,Y) :-pasangan(X,Y).
is_anakA(X,Y) :-anakA(X,Y).
is_anakI(X,Y) :-anakI(X,Y).
is_sodaraA(Y,Z) :-sodara(Y,Z).
is_sodaraI(Y,Z) :-sodara(Y,Z).
is_sodaraiparA(Y,Z) :-pasangan(X,Y),is_sodaraI(Z,X).
is_sodaraiparI(Y,Z) :-is_sodara(X,Y),pasangan(Z,X).
is_kakek(X,Z) :-anakA(X,Z),is_anakA(Y,Z).
is_nenek(X,Z) :-anakI(X,Y),is_anakI(Y,Z).
is_besan(X,X) :-besan(Y,Y).
