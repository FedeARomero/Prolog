man(alan).
man(john).
man(george).

program() :-
    open('file.txt',write, Stream),
   ( cartesiano(X,Y),  write(Stream,X),write(Stream,'-'),write(Stream,Y),nl(Stream),fail;true
   ),
    close(Stream).
cartesiano(X,Y):- man(X),man(Y),dif(X,Y).
