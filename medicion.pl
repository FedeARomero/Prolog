medicion(1, 20 , 50).
medicion(2,50,80).
medicion(3,10,15).
medicion(4, 1,2000).


validas(X):- medicion(X,Min,Max),Resta is (Max - Min),Resta < 1000.

muestrasValidas(X,Y,Z):- validas(X),medicion(X,Y,Z).

primeraValida(X,Y,Z):- medicion(X,Y,Z),validas(X),!.

diferencia(D):- muestrasValidas(_,Y,Z),D is (Z-Y).
cartesiano(X,Y):- diferencia(X),diferencia(Y).
seleccion(X,Y):- cartesiano(X,Y),X<Y.
proyeccion(X):- seleccion(X,_).
maximo(X):- diferencia(X),not(proyeccion(X)),!.
medicionMaxima(X,Y,Z):- medicion(X,Y,Z),D is (Z-Y),maximo(D).

