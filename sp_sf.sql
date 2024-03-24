-- Añadir clave foránea en la tabla internos referenciando pabellones
ALTER TABLE internos
ADD FOREIGN KEY (pabellon)
REFERENCES pabellones(pabellon_id);

-- Añadir clave foránea en la tabla internos referenciando unidades
ALTER TABLE internos
ADD FOREIGN KEY (unidad)
REFERENCES unidades(unidad);

-- Añadir clave foránea en la tabla visitas referenciando internos
ALTER TABLE visitas
ADD FOREIGN KEY (interno)
REFERENCES internos(mat);

-- Añadir clave foránea en la tabla visitas referenciando unidades
ALTER TABLE visitas
ADD FOREIGN KEY (unidad)
REFERENCES unidades(unidad);

-- Añadir clave foránea en la tabla visitas referenciando sanciones_visitas
ALTER TABLE visitas
ADD FOREIGN KEY (sanciones)
REFERENCES sanciones_visitaS(SANCION_ID);

-- Añadir clave foránea en la tabla pabellones referenciando unidades
ALTER TABLE PABELLONES
ADD FOREIGN KEY (UNIDAD)
REFERENCES unidades(UNIDAD);

-- Añadir clave foránea en la tabla pabellones referenciando penitenciarios como celador
ALTER TABLE PABELLONES
ADD FOREIGN KEY (AUXILIAR)
REFERENCES PENITENCIARIOS(LEGAJO);

-- Añadir clave foránea en la tabla pabellones referenciando penitenciarios como auxiliar
ALTER TABLE PABELLONES
ADD FOREIGN KEY (CELADOR)
REFERENCES PENITENCIARIOS(LEGAJO);

-- Añadir clave foránea en la tabla penitenciarios referenciando unidades
ALTER TABLE PENITENCIARIOS
ADD FOREIGN KEY (UNIDAD)
REFERENCES UNIDADES(UNIDAD);

-- Añadir clave foránea en la tabla penitenciarios referenciando puestos
ALTER TABLE PENITENCIARIOS
ADD FOREIGN KEY (PUESTO)
REFERENCES PUESTOS(PUESTO_ID);

-- Añadir clave foránea en la tabla penitenciarios referenciando puestos
ALTER TABLE PENITENCIARIOS
ADD FOREIGN KEY (PUESTO)
REFERENCES PUESTOS(PUESTO_ID);

-- Renombrar la tabla saciones_visitas a sanciones_visitas
ALTER TABLE SACIONES_VISITAS RENAME TO SANCIONES_VISITAS;

-- Añadir las columnas celador y auxiliar en la tabla pabellones como enteros
ALTER TABLE PABELLONES ADD CELADOR INT;
ALTER TABLE PABELLONES ADD AUXILIAR INT;

-- Modificar el tipo de dato de la columna PUESTO en la tabla penitenciarios a INT para hacer referencia a la tabla puestos
ALTER TABLE PENITENCIARIOS modify PUESTO INT;

-- Eliminar la tabla INTERNOS
DROP TABLE INTERNOS;

-- Crear la tabla internos
CREATE TABLE IF NOT EXISTS internos (
MAT INT NOT NULL ,
DNI INT NOT NULL,
NOMBRE TEXT(20) NOT NULL,
APELLIDO TEXT(20) NOT NULL,
CIUDAD TEXT(40) NOT NULL,
DOMICILIO varchar(40) NOT NULL,
NACIMIENTO DATE,
CONDUCTA DECIMAL(4, 2),
CAUSA TEXT(30),
UNIDAD VARCHAR(3) NOT NULL,
PABELLON varchar(10) NOT NULL,
INGRESO DATE NOT NULL,
HIJOS INT,
VISITAS INT,
PRIMARY KEY(MAT)
);

-- Crear la tabla visitas
CREATE TABLE IF NOT EXISTS visitas (
VISITA_ID INT NOT NULL auto_increment,
DNI INT NOT NULL,
NOMBRE TEXT(20) NOT NULL,
APELLIDO TEXT(20) NOT NULL,
CIUDAD TEXT(40) NOT NULL,
DOMICILIO varchar(40) NOT NULL,
NACIMIENTO DATE NOT NULL,
INTERNO INT NOT NULL NOT NULL,
RELACION TEXT(10) NOT NULL,
UNIDAD VARCHAR(3) NOT NULL,
SANCIONES INT,
PRIMARY KEY(VISITA_ID)
);

-- Crear la tabla sanciones_visitas
CREATE TABLE IF NOT EXISTS saciones_visitas (
SANCION_ID INT auto_increment,
MOTIVO TEXT(40),
DIAS_SANCION INT,
FECHA DATE,
PRIMARY KEY(SANCION_ID)
);

-- Crear la tabla puestos
CREATE TABLE IF NOT EXISTS puestos (
PUESTO_ID INT NOT NULL,
UNIDAD VARCHAR(3),
DESCRIPCION TEXT(30),
PRIMARY KEY(PUESTO_ID)
);

-- Crear la tabla unidades
CREATE TABLE IF NOT EXISTS unidades (
UNIDAD VARCHAR(3) NOT NULL,
NOMBRE TEXT(15),
DIRECCION VARCHAR(20),
PRIMARY KEY(UNIDAD)
);

-- Crear la tabla pabellones
CREATE TABLE IF NOT EXISTS pabellones (
PABELLON_ID INT,
UNIDAD VARCHAR(3) NOT NULL,
NUMERO_PABELLON INT,
PLANTAS INT,
CELADOR INT,
AUXILIAR INT,
PRIMARY KEY(pabellon_id)
);

-- Crear la tabla penitenciarios
CREATE TABLE IF NOT EXISTS penitenciarios (
LEGAJO INT NOT NULL,
DNI INT NOT NULL,
JERARQUIA VARCHAR(10) NOT NULL,
NOMBRE TEXT(25) NOT NULL,
APELLIDO TEXT(20) NOT NULL,
DOMICILIO VARCHAR(30) NOT NULL,
LOCALIDAD TEXT(20),
PUESTO TEXT (30),
FUNCION TEXT (20),
UNIDAD VARCHAR(3) NOT NULL,
NACIMIENTO DATE,
PRIMARY KEY (LEGAJO)
);
