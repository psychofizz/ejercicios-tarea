CREATE TABLE direcciones(
id_direccion INTEGER PRIMARY KEY, 
calle VARCHAR(200),
comuna VARCHAR(200),
ciudad VARCHAR(200),
);

CREATE TABLE sedes(
id_sede INTEGER PRIMARY KEY, 
presupuesto INTEGER, 
);

CREATE TABLE complejos_deportivos(
id_complejo_deportivo INTEGER PRIMARY KEY, 
id_sede INTEGER,
id_direccion INTEGER,
jefe VARCHAR(200),
area_total INTEGER,
area_total_unidades VARCHAR(20),
FOREIGN KEY (id_sede) REFERENCES sedes(id_sede),
FOREIGN KEY (id_direccion) REFERENCES direcciones(id_direccion)
);

CREATE TABLE polideportivos(
id_complejo_deportivo INTEGER PRIMARY KEY REFERENCES complejos_deportivos(id_complejo_deportivo), 
area_reservada INTEGER,
);

CREATE TABLE eventos(

);

