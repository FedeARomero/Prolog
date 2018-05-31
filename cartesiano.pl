conjunto1(1).
conjunto1(2).
conjunto1(3).
ventas(enero,25000).
ventas(febrero,18000).
ventas(marzo,18500.30).
ventas(abril,25000).

cartesiano(X,Y):- conjunto1(X),conjunto1(Y).
seleccion(X,Y):-cartesiano(X,Y),X<Y.
proyeccion(X):-seleccion(X,_).
maximo(X):-conjunto1(X),not(proyeccion(X)).

cartesianov(X,Y):-ventas(_,X),ventas(_,Y).
seleccionv(X,Y):-cartesianov(X,Y),X<Y.
proyeccionv(X):-seleccionv(X,_).
maximo_importe(Importe):-ventas(_,Importe),not(proyeccionv(Importe)),!.
maximo_mes(Mes):-ventas(Mes,Importe),maximo_importe(Importe).
maximo(Mes,Importe):-ventas(Mes,Importe),not(proyeccionv(Importe)).
cls:- write('\e[2J').

