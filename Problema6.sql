CREATE TABLE solicitudes (
cedula INTEGER PRIMARY KEY, 
id_responsable INTEGER, 
fecha_solicitud DATE,
FOREIGN KEY (id_responsable) REFERENCES responsables(id_responsable)
);

CREATE TABLE responsables(
id_responsable INTEGER PRIMARY KEY,
fecha_entrega DATE,
nombre VARCHAR(50),
apellido VARCHAR(50)
);

CREATE TABLE ordenes(
id_orden INTEGER PRIMARY KEY, 
fecha_entrega_orden DATE,
monto decimal(10,4),
nit bit,
id_proveedor INTEGER,
FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor),
);

CREATE TABLE bienes(
id_responsable INTEGER PRIMARY KEY,
direccion VARCHAR(200),
FOREIGN KEY (id_responsable) REFERENCES responsables(id_responsable)
);

CREATE TABLE items(
id_item INTEGER PRIMARY KEY,
id_orden INTEGER,
id_factura INTEGER,
nombre VARCHAR(50),
apellido VARCHAR(50),
valor DECIMAL(10,2),
valor_total DECIMAL(10,2),
unidad_medida VARCHAR(50),
FOREIGN KEY (id_orden) REFERENCES ordenes(id_orden),
FOREIGN KEY (id_factura) REFERENCES facturas(id_factura)
);

CREATE TABLE proveedores(
id_proveedor INTEGER PRIMARY KEY,
nombre_proveedor VARCHAR (200),
);

CREATE TABLE facturas(
id_factura INTEGER PRIMARY KEY,
id_proveedor INTEGER,
FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor)
);

CREATE TABLE salida_almacenes(
id_almacen INTEGER PRIMARY KEY, 
num saldo
);
