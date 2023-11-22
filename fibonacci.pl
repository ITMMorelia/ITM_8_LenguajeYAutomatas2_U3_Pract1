/* fibonacci(0, 0) :- !.: Este es el primer caso base. Si el número de entrada es 0, entonces el resultado es 0.*/
fibonacci(0, 0) :- !.

/* fibonacci(1, 1) :- !.: Este es el segundo caso base. Si el número de entrada es 1, entonces el resultado es 1.*/
fibonacci(1, 1) :- !.

/* fibonacci(N, Resultado) :-: Esta línea define la función para cualquier número N que no sea 0 o 1.*/
fibonacci(N, Resultado) :-

/* N1 is N - 1, N2 is N - 2,: Estas líneas calculan los dos números anteriores en la serie de Fibonacci.*/
    N1 is N - 1,
    N2 is N - 2,

    /* fibonacci(N1, Resultado1), fibonacci(N2, Resultado2),: Estas líneas llaman a la función fibonacci de manera recursiva para los dos números anteriores. */
    fibonacci(N1, Resultado1),
    fibonacci(N2, Resultado2),

    /* Resultado is Resultado1 + Resultado2.: Esta línea suma los resultados de las dos llamadas recursivas para obtener el número de Fibonacci para N.*/
    Resultado is Resultado1 + Resultado2.
