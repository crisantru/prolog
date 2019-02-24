
es_fruta(limon).
es_fruta(naranja).
es_fruta(lima).
es_fruta(toronja).

verde(limon).
verde(lima).

anaranjado(naranja).
anaranjado(toronja).

tamano(chico, limon).
tamano(chico, limon).
tamano(grande, naranja).
tamano(grande, toronja).

esta_canasta(X, Y, W, Z) :- fruta(X), verde(Y), anaranjado(W), tamano(Z, A).


