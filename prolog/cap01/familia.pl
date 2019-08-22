progenitor(pam,bob).
progenitor(tom,bob).
progenitor(tom,liz).
progenitor(bob,ann).
progenitor(bob,pat).
progenitor(pat,jim).

% mujer(X). X es mujer
mujer(pam).
mujer(liz).
mujer(pat).
mujer(ann).

% hombre(X). X es hombre
hombre(tom).
hombre(bob).
hombre(jim).

% hermano(X,Y). X es herman de Y, X es hombre
% hermana(X,Y). X es hermana de Y, X es mujer

hermano(X,Y):- progenitor(Z,X), progenitor(Z,Y),hombre(X), dif(X,Y).

% abuelo(X,Y). Z es progenitor de Y, X progenitor de Z.
abuelo(X,Y):-progenitor(Z,Y),progenitor(X,Z), hombre(X).


% funcion de recurrencia hacia abajo para encontrar los ancestros de Y
ancestro(X,Y):-progenitor(X,Y).
ancestro(X,Y):-progenitor(X,Z),ancestro(Z,Y).
