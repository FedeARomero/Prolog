cls:-write('\e[2J').
numero(1).
numero(2).
numero(3).

ternas(X,Y,Z):-numero(X),!,numero(Y),numero(Z).

f(X, Y):- X <  4 , Y is -X,!.
f(X,-4):- X >= 4 , X =< 8 ,!.
f(X, Y):- X >  8 , Y is X-12.


factorial(X,Y):- X > -1 , ( X == 0; X == 1) , Y is 1,!.
factorial(X,Fact):- Y is X-1, factorial(Y,Z), Fact is X*Z.

fiboancci(X,Fibo):- X < 0 , Fibo is -1, !.
fibonacci(X,Fibo):- ( X == 0 ; X == 1 ) , Fibo is 1, !.
fibonacci(X,Fibo):- Aux1 is X-1 , fibonacci(Aux1,Fibo1) , Aux2 is X-2 , fibonacci(Aux2,Fibo2) , Fibo is Fibo1 + Fibo2.
