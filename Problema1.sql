USE Tarea;

CREATE TABLE Clientes(
IdCliente INTEGER PRIMARY KEY, 
Saldo INTEGER, 
LimiteDeCredito INTEGER CHECK (LimiteDeCredito <=3000), 
Descuento BIT, 
);

CREATE TABLE Direcciones(
IdDireccion INTEGER PRIMARY KEY, 
NCalle INTEGER, 
Comuna VARCHAR(50), 
Ciudad VARCHAR(50), 
Direccion VARCHAR (500),
);

CREATE TABLE DireccionClientes(
IdDireccionCliente INTEGER PRIMARY KEY, 
IdCliente INTEGER, 
IdDireccion INTEGER, 
FOREIGN KEY(IdDireccion) REFERENCES Direcciones(IdDireccion),
FOREIGN KEY (IdCliente) REFERENCES Clientes(IdCliente),
);


CREATE TABLE Articulos(
IdArticulo INTEGER PRIMARY KEY, 
Existencia INTEGER, 
Descripcion VARCHAR(500),
IdFabrica INTEGER, 
FOREIGN KEY (IdFabrica) REFERENCES Fabricas(IdFabrica),
);

CREATE TABLE Fabricas(
IdFabrica INTEGER PRIMARY KEY,
IdArticulo INTEGER, 
FOREIGN KEY (IdArticulo) REFERENCES Articulos(IdArticulo),
);

CREATE TABLE Cabeceras(
IdCabecera INTEGER PRIMARY KEY, 
IdCliente INTEGER, 
IdDireccion INTEGER, 
FOREIGN KEY (IdCliente) REFERENCES Clientes(IDCliente),
FOREIGN KEY (IdDireccion) REFERENCES Direcciones(IdDireccion),
);

CREATE TABLE Pedidos(
IdPedido INTEGER PRIMARY KEY, 
IdCabecera INTEGER, 
FOREIGN KEY (IdCabecera) REFERENCES Cabeceras(IdCabecera),
);

CREATE TABLE Contenido_Pedido(
IdOrden INTEGER PRIMARY KEY, 
IdPedido INTEGER, 
FOREIGN KEY (IdPedido) REFERENCES Pedidos(IdPedido),
);

CREATE TABLE Distribuidor(
IdDistribuidor INTEGER PRIMARY KEY, 
IdFabrica INTEGER, 
NumTel INTEGER, 
FOREIGN KEY (IdFabrica) REFERENCES Fabricas(IdFabrica),
);


