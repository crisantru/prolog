%Base de Hechos
%hombre(nombre)
%mujer(nombre)
%padre(nombre_padre, nombre_hijo).
%madre(nombre_madre, nombre_hijo).

hombre(valentin).
hombre(eligio).
hombre(alberto).
hombre(roberto).
hombre(juan).
hombre(mauricio).
hombre(jose).
hombre(cristian).
hombre(javier).
hombre(josue).
hombre(romeo).
hombre(manuel).
hombre(ricardo).
hombre(chema).
hombre(edgar).
hombre(yareni).

mujer(josefina).
mujer(eufemia).
mujer(blanca).
mujer(susana).
mujer(elvia).
mujer(maria).
mujer(lucy).
mujer(luciana).
mujer(rosa).
mujer(samaria).
mujer(diana).
mujer(adriana).
mujer(yareni).

padre(valentin, blanca).
padre(valentin, susana).
padre(valentin, alberto).
padre(valentin, roberto).
padre(valentin, elvia).
padre(eligio, maria).
padre(eligio, juan).
padre(eligio, lucy).
padre(eligio, mauricio).
padre(eligio, jose).
padre(alberto, cristian).
padre(alberto, samaria).
padre(roberto, javier).
padre(roberto, diana).
padre(romeo, alan).
padre(romeo, yareni).
padre(jose, chema).
padre(jose, ricardo).
padre(jose, manuel).
padre(josue, adriana).
padre(josue, edgar).

madre(josefina, blanca).
madre(josefina, susana).
madre(josefina, alberto).
madre(josefina, roberto).
madre(josefina, elvia).
madre(eufemia, maria).
madre(eufemia, juan).
madre(eufemia, lucy).
madre(eufemia, mauricio).
madre(eufemia, jose).
madre(lucy, cristian).
madre(lucy, samaria).
madre(rosa, javier).
madre(rosa, diana).
madre(elvia, alan).
madre(elvia, yareni).
madre(luciana, chema).
madre(luciana, ricardo).
madre(luciana, manuel).


/*Base de reglas*/
diferente(X, Y) :-not(X=Y).
hermano(X, Y) :- padre(Z, X), padre(Z, Y), diferente(X, Y).
abuelo(X, Y) :- padre(X, Z), padre(Z, Y), diferente(X, Y), hombre(X).
abuelo(X, Y) :- padre(X, Z), madre(Z, Y), diferente(X, Y).
abuela(X, Y) :- madre(X, Z), madre(Z, Y), diferente(X, Y), mujer(X).
abuela(X, Y) :- madre(X, Z), padre(Z, Y), diferente(X, Y).
tio(X, Y) :- padre(Z, Y), hermano(Z, X), hombre(X).
tio(X, Y) :- madre(Z, Y), hermano(Z, X), hombre(X). 
hijo(X, Y) :- padre(Y, X).
primo(X, Y) :- padre(Z, X) ,padre(W, Y), hermano(Z, W).
primo(X, Y) :- padre(Z, X) ,madre(W, Y), hermano(Z, W).
primo(X, Y) :- madre(Z, X) ,padre(W, Y), hermano(Z, W).



