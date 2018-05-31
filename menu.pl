entrada(paella).
entrada(gazpacho).
entrada(consom�).
carne(filete_de_cerdo).
carne(pollo_asado).
pescado(trucha).
pescado(bacalao).
postre(flan).
postre(helado).
postre(pastel).
bebida(vino).
bebida(cerveza).
bebida(agua_mineral).

menu(X,Y,Z,B):-entrada(X),(carne(Y);pescado(Y)),postre(Z),bebida(B).
menu_consome(consom�,Y,Z,B):-entrada(consom�),(carne(Y);pescado(Y)),postre(Z),bebida(B).
menu_sin_flan(X,Y,Z,B):-entrada(X),(carne(Y);pescado(Y)),postre(Z),not(Z = flan),bebida(B).
