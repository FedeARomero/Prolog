cls :- write('\e[2J').

semestre1(daniel, 25000).
semestre1(fede, 15000).
semestre1(brian, 10000).

semestre2(daniel, 40000).
semestre2(fede, 12000).
semestre2(matias, 26000).

presente(Vend) :- semestre1(Vend,_),semestre2(Vend,_).
ausente(Vend) :- (semestre1(Vend,_);semestre2(Vend,_)),not(presente(Vend)).

comision(Vend,Res) :- semestre1(Vend,Venta1), Venta1>20000, semestre2(Vend,Venta2), Venta2>20000, presente(Vend),
    Res is (Venta1+Venta2) * 0.2.

comision(Vend,Res) :- semestre1(Vend,Venta1), Venta1>10000, Venta1 =< 20000, semestre2(Vend,Venta2), Venta2>10000, Venta2 =< 20000,
    presente(Vend), Res is (Venta1+Venta2) * 0.1.

comision(Vend,Res) :- (semestre1(Vend,Venta), ausente(Vend)), Res is Venta * 0.05.
comision(Vend,Res) :- (semestre2(Vend,Venta), ausente(Vend)), Res is Venta * 0.05.

