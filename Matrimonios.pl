
%hombre(Nombre, Altura, Color de pelo, Edad)
hombre(fede,media,negro,joven).
hombre(brian,alta,rubio,adulto).
hombre(diego,baja,pelirrojo,viejo).

%mujer(Nombre, Altura, Color de pelo, Edad)
mujer(veronica,baja,castaño,adulta).
mujer(carla,alta,rubio,joven).
mujer(juana,media,negro,vieja).

%gusta(Nombre, Musica, Peliculas, Deportes
gusta(fede,jazz,aventura,jogging).
gusta(brian,pop,policiaca,natacion).
gusta(diego,clasica,ciencia-ficcion,tenis).
gusta(veronica,jazz,aventura,jogging).
gusta(carla,pop,policiaca,natacion).
gusta(juana,clasica,ciencia-ficcion,tenis).

%busca(Nombre, Altura, Color de pelo , Edad)
busca(fede,baja,castaño,adulta).
busca(brian,alta,rubio,joven).
busca(diego,media,negro,vieja).
busca(veronica,media,negro,joven).
busca(carla,alta,rubio,adulto).
busca(juana,baja,pelirrojo,viejo).

conviene(Hombre,Mujer):- busca(Hombre,Altura,Pelo,Edad),mujer(Mujer,Altura,Pelo,Edad),gusta(Hombre,Musica,Libro,Deporte),
    gusta(Mujer,Musica,Libro,Deporte).
