%mcd(X,0,Z):- Z is X,!.
%mcd(X,Y,Z):- A is Y, B is X mod Y,mcd(A,B,Z).
mcd(X,X,X):- !.
mcd(X,Y,R):- X < Y , mcd(Y,X,R).
mcd(X,Y,R):- X > Y , Z is X - Y , mcd(Z,Y,R).



