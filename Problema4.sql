CREATE TABLE Aeropuertos (
CodigoAeropuerto INTEGER PRIMARY KEY, 
Nombre VARCHAR (50) NOT NULL, 
Ciudad VARCHAR(50) NOT NULL,
Pais VARCHAR(50)NOT NULL,
);

CREATE TABLE ProgramaDeVuelo(
IdPrograma INTEGER PRIMARY KEY, 
NumeroVuelo INTEGER, 
LineaAerea VARCHAR(50),
);

CREATE TABLE Avion(
IdAvion INTEGER PRIMARY KEY, 
Modelo VARCHAR(200), 
Capacidad INTEGER,
);

CREATE TABLE Vuelo(
IdVuelo INTEGER PRIMARY KEY,
IdAvion INTEGER,
Fecha Date,
Plazas Vacias INTEGER CHECK (),
FOREIGN KEY (IdAvion) REFERENCES Avion(IdAvion),
);

CREATE TABLE Escala_Tecnica(
IdEscalaTecnica INTEGER PRIMARY KEY, 
IdProgramaVuelo INTEGER, 
FOREIGN KEY (IdProgramaVuelo) REFERENCES ProgramaDeVuelo(IdPrograma),
);