USE Tarea;

CREATE TABLE Direcciones(
IdDireccion INTEGER PRIMARY KEY, 
NCalle INTEGER NOT NULL, 
Comuna VARCHAR(50) NOT NULL, 
Ciudad VARCHAR(50) NOT NULL, 
);

CREATE TABLE Personas(
IdPersona INTEGER PRIMARY KEY, 
PrimerNombre VARCHAR(50) NOT NULL, 
SegundoNombre VARCHAR (50) NOT NULL,
PrimerApellido VARCHAR(50) NOT NULL,
SegundoApellido VARCHAR(50),
IdDireccion INTEGER, 
FOREIGN KEY (IdDireccion) REFERENCES Direcciones(IdDireccion),
);

CREATE TABLE Telefonos(
IdTelefono INTEGER PRIMARY KEY, 
IdPersona INTEGER, 
FOREIGN KEY (IdPersona) REFERENCES Personas(IdPersona),
Telefono INTEGER UNIQUE,
);


CREATE TABLE Proveedores (
IdPersona INTEGER,
FOREIGN KEY (IdPersona) REFERENCES Personas(IdPersona),
PaginaWeb VARCHAR(200),
IdTelefono INTEGER, 
);

CREATE TABLE Cliente(
IdPersona INTEGER,
FOREIGN KEY (IdPersona) REFERENCES Personas(IdPersona),
);

CREATE TABLE Productos(
IdProducto INTEGER PRIMARY KEY, 
Nombre VARCHAR(200) NOT NULL, 
PrecioActual Decimal(14,2) NOT NULL,
Stock INTEGER NOT NULL,
IdPersona INTEGER,
FOREIGN KEY (IdPersona) REFERENCES Personas(IdPersona),
);

CREATE TABLE Ventas(
IdVenta INTEGER PRIMARY KEY, 
Nombre VARCHAR(100) NOT NULL,
Fecha Date NOT NULL, 
IdCliente INTEGER NOT NULL, 
Descripcion VARCHAR(500) NOT NULL,
FOREIGN KEY (IdCliente) REFERENCES Personas(IdPersona),
);