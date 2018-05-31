hombre(pedro).
hombre(manuel).
hombre(arturo).
mujer(mar�a).
mujer(carla).
padre(pedro,manuel).
padre(pedro,arturo).
padre(pedro,mar�a).
padre(pedro,carla).

ni�o(Hijo,Padre):-padre(Padre,Hijo).
hijo(Hijo,Padre):-padre(Padre,Hijo),hombre(Hijo).
hija(Hija,Padre):-padre(Padre,Hija),mujer(Hija).
hermanoohermana(H1,H2):-padre(_,H1),padre(_,H2),dif(H1,H2).
hermano(H1,H2):-padre(_,H1),padre(_,H2),dif(H1,H2),hombre(H1),hombre(H2).
hermana(H1,H2):-padre(_,H1),padre(_,H2),dif(H1,H2),mujer(H1),mujer(H2).

