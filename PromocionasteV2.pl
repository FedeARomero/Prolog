cls:-write('\e[2J').
%Hechos

parcial1(fede  ,10).
parcial1(dani  , 4).
parcial1(brian , 7).
parcial1(damian,10).

parcial2(fede  , 9).
parcial2(matias,10).
parcial2(dani  , 5).
parcial2(brian , 6).

%Fin de los Hechos

presente(Alumno):- parcial1(Alumno,_),parcial2(Alumno,_).
ausente(Alumno):-  parcial1(Alumno,_),not(presente(Alumno)).
ausente(Alumno):-  parcial2(Alumno,_),not(presente(Alumno)).

promociona(Alumno, Promedio):- presente(Alumno), parcial1(Alumno,N1), parcial2(Alumno,N2), N1>=7, N2>=7, Promedio is (N1+N2)/2.
