CREATE TABLE Categorias(
IdCategoria INTEGER PRIMARY KEY, 
Categoria VARCHAR(100) NOT NULL,
);

CREATE TABLE Carretera (
IdCarretera INTEGER PRIMARY KEY,
IdCategoria INTEGER, 
FOREIGN KEY (IdCategoria) REFERENCES Categorias(IdCategoria),
);

CREATE TABLE Comuna(
IdComuna INTEGER PRIMARY KEY, 
Tramo INTEGER, 
);

CREATE TABLE Tramo(
IdTramo INTEGER PRIMARY KEY, 
);
