le_gusta_a(clara,jorge).
le_gusta_a(clara,chocolate).
le_gusta_a(clara,cafe).
le_gusta_a(jorge,clara).
le_gusta_a(jorge,sistemas).

/*Negacion de predicados*/
not(le_gusta_a(clara,jorge)).

/* o tambien como \+ le_gusta_a(clara,jorge). */

/* condicional: REGLAS */

/* novios(Per1, Per2) <- Per1 y Per2 son novios */
novios(X,Y) :- le_gusta_a(X,Y), le_gusta_a(Y,X).

/* hermana_de(Per1, Per2) <- Per1 es hermana de Per2 */
hermana_de(X,Y) :- mujer(x),
                    es_padre_de(P,X), es_madre_de(M,X),
                    es_padre_de(P,Y), es_madre_de(M,Y).

/*Ejemplo de disyuncion con ; y con diferentes clausulas*/
/* 1. con ; seria: */
es_hijo_de(X,Y) :- (es_padre_de(Y,X); es_madre_de(Y,X)).

/* 2. con clausulas diferentes seria: */
es_hijo_de(X,Y) :- es_padre_de(Y,X).
es_hijo_de(X,Y) :- es_madre_de(Y,X).