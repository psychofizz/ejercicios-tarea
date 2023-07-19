CREATE TABLE peliculas(
id_pelicula INTEGER PRIMARY KEY,
titulo_distribucion VARCHAR(50),
anio_preoduccion INTEGER,
idioma_original INTEGER REFERENCES idiomas(id_idioma),
duracion INTEGER,
id_genero INTEGER REFERENCES generos(id_genero),
);

CREATE TABLE generos(
id_genero INTEGER PRIMARY KEY, 
genero VARCHAR(100) NOT NULL UNIQUE, 
);

CREATE TABLE idiomas(
id_idioma INTEGER PRIMARY KEY,
idioma VARCHAR(50) NOT NULL UNIQUE,
);

CREATE TABLE nacionalidades(
id_nacionalidad INTEGER PRIMARY KEY,
nacionalidad VARCHAR(50) UNIQUE NOT NULL,
);

CREATE TABLE funciones(
id_funcion INTEGER PRIMARY KEY, 
id_pelicula INTEGER REFERENCES peliculas(id_pelicula),
hora_inicio INTEGER NOT NULL,
sala INTEGER NOT NULL,
id_promocion INTEGER REFERENCES promociones(id_promocion),
);

CREATE TABLE promociones(
id_promocion INTEGER PRIMARY KEY,
descripcion VARCHAR(200),
descuento decimal(3,2) NOT NULL,
);

CREATE TABLE salas(
id_sala INTEGER PRIMARY KEY,
nombre VARCHAR(50),
direccion VARCHAR(50),
telefono INTEGER,
id_funcion INTEGER REFERENCES funciones(id_funcion)
);


CREATE TABLE participantes(
id_participante INTEGER PRIMARY KEY,
nombre VARCHAR(200),
actor BIT, 
participante BIT,
cantidad_peliculas INTEGER,
id_nacionalidad INTEGER REFERENCES nacionalidades(id_nacionalidad),
);
