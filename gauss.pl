gauss(1,1):- !.
gauss(N,G):- N>1,N1 is N-1,gauss(N1,G1),write(G1),nl,G is N+G1.
