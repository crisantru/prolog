;;Familiares
;;padre(nombre_hijo, nombre_padre).
padre(cristian, alberto)
;;madre(nombre_hijo, nombre_madre).
madre(cristian, lucy).
padre(daniel, alberto).
madre(sergio, lucy).
hermano(x,y) :- padre(x,z) y padre(y,z).
hermano(x,y) :- madre(x,w) y madre(y,w).
