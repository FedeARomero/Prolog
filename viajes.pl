transporte(roma,20).
transporte(londres,30).
transporte(tunez,10).

alojamiento(roma,hotel,50).
alojamiento(roma,hostal,30).
alojamiento(roma,camping,10).
alojamiento(londres,hotel,60).
alojamiento(londres,hostal,40).
alojamiento(londres,camping,20).
alojamiento(tunez,hotel,40).
alojamiento(tunez,hostal,20).
alojamiento(tunez,camping,5).

multiplicar(P,X,Y):- P is X*Y.
sumar(S,X,Y):- S is X+Y.
menor(X,Y):- X<Y.

%viaje(londres,2,camping,70) -> true

viaje(C,S,H,P):- transporte(C,Ptrans),alojamiento(C,H,Paloj),multiplicar(M,Paloj,S),sumar(P,Ptrans,M).

% viajeeconomico(C,S,H,P,Pmax):-transporte(C,Ptrans),alojamiento(C,H,Paloj),multiplicar(M,Paloj,S),sumar(P,Ptrans,M),menor(P,Pmax).

viajeeconomico(C,S,H,P,Pmax):- viaje(C,S,H,P),menor(P,Pmax).








