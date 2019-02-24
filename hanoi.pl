mueve(1,X,Y,_) :-
write('Mueve disco en el tope '),
write(X),
write(' a '),
write(Y),
nl.
mueve(N,X,Y,Z) :-
N>1,
M is N-1,
mueve(M,X,Z,Y),
mueve(1,X,Y,_),
mueve(M,Z,Y,X).
