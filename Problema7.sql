CREATE TABLE partidos(
id_partido INTEGER PRIMARY KEY,
id_arbitro INTEGER REFERENCES personas(id_persona),
id_ganador INTEGER REFERENCES personas(id_persona), 
);

CREATE TABLE personas(
id_persona INTEGER PRIMARY KEY, 
nombre VARCHAR(100),
);

CREATE TABLE jugador(
id_jugador INTEGER PRIMARY KEY REFERENCES personas(id_persona),
id_entrenador INTEGER REFERENCES personas(id_persona),
id_nacionalidad INTEGER REFERENCES nacionalidades(id_nacionalidad),
posicion INTEGER,
id_premio INTEGER REFERENCES premio(id_premio),
);

CREATE TABLE premios(
id_premio INTEGER PRIMARY KEY, 
premio VARCHAR(200)
);

CREATE TABLE nacionalidades(
id_nacionalidad INTEGER PRIMARY KEY, 
nacionalidad VARCHAR(200) UNIQUE,
);

CREATE TABLE torneos(
id_torneo INTEGER PRIMARY KEY,
id_partido INTEGER REFERENCES partidos(id_partido),
anio INTEGER, 
pais VARCHAR(30),
lugar VARCHAR(30),
modalidad VARCHAR(30),
);


