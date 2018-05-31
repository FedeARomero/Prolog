cls:-write('\e[2J').

%Notas del Primer Parcial
parcial1(fede,10).
parcial1(matias,9).
parcial1(dani,4).
parcial1(brian,7).
parcial1(damian,10).
parcial1(lucas,2).
parcial1(diego,2).

%Notas del Segundo Parcial
parcial2(fede,9).
parcial2(matias,10).
parcial2(dani,5).
parcial2(brian,6).
parcial2(damian,2).
parcial2(lucas,8).
parcial2(diego,2).

%Buscar el Promedio Maximo
promedios(Promedio):- promedioPromocionaron(_,Promedio).
cartesianoPromedio(Promedio1,Promedio2):- promedios(Promedio1) , promedios(Promedio2).
seleccionPromedio(Promedio1,Promedio2):- cartesianoPromedio(Promedio1,Promedio2) , Promedio1<Promedio2.
proyeccionPromedio(Promedio):- seleccionPromedio(Promedio,_).
maximoPromedio(Promedio):- promedios(Promedio) , not(proyeccionPromedio(Promedio)),!.

%Alumnos que obtuvieron el Promedio Maximo
maximoAlumnos(Alumno):- promedioPromocionaron(Alumno,Promedio) , maximoPromedio(Promedio).
maximoPromedioAlumno(Alumno,Promedio):- maximoAlumnos(Alumno) , maximoPromedio(Promedio).

%Alumnos que Racursaron
recursaron(Alumno):- parcial1(Alumno,Nota1) , parcial2(Alumno,Nota2) , Nota1 < 4 , Nota2 < 4.
recursaron(Alumno):- parcial1(Alumno,Nota1) , parcial2(Alumno,Nota2) , Nota1 < 4 , Nota2 > 3.
recursaron(Alumno):- parcial1(Alumno,Nota1) , parcial2(Alumno,Nota2) , Nota1 > 3 , Nota2 < 4.

%Alumnos que Cursaron
cursaron(Alumno):- parcial1(Alumno,Nota1) , parcial2(Alumno,Nota2) , Nota1 > 3 , Nota2 > 3 , Nota1 > 6 , Nota2 < 7.
cursaron(Alumno):- parcial1(Alumno,Nota1) , parcial2(Alumno,Nota2) , Nota1 > 3 , Nota2 > 3 , Nota1 < 7 , Nota2 > 6.
cursaron(Alumno):- parcial1(Alumno,Nota1) , parcial2(Alumno,Nota2) , Nota1 > 3 , Nota2 > 3 , Nota1 < 7 , Nota2 < 7.

%Alumnos que Promocionaron
promocionaron(Alumno):- parcial1(Alumno,_) , parcial2(Alumno,_) , not(cursaron(Alumno)) , not(recursaron(Alumno)).

%Promedio de los Alumnos que Promocionan
promedioPromocionaron(Alumno, Promedio):- promocionaron(Alumno) , parcial1(Alumno,Nota1) , parcial2(Alumno,Nota2) , Promedio is (Nota1 + Nota2)/2.













