espadre(fernando,matias).
espadre(matias,diego).
espadre(diego,brian).
espadre(brian,dani).

espadre(raul,victor).
espadre(victor,roberto).
espadre(roberto,fede).


antecesores(X):- espadre(Padre,X),write(Padre),nl,antecesores(Padre).
