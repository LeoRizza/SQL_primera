-- Inserción de Unidades
INSERT INTO unidades (unidad, nombre, direccion) VALUES
('u01', 'Coronda', 'Las Flores 2123'),
('u02', 'Las Flores', 'Piñeiro 4456'),
('u11', 'Piñeiro', 'Coronda 3789'),
('u03', 'J. M. Rosas', 'Oroño 1012'),
('u04', 'San Martín', 'San Martín 1345'),
('u05', 'Manuel Belgrano', 'Belgrano 3245'),
('u06', 'San Lorenzo', 'San Juan 3451'),
('u07', 'San Lorenzo', 'Clemente 6245'),
('u08', 'San Lorenzo', 'Irigoyen 5345');

-- Inserción de Puestos
INSERT INTO puestos (puesto_id, unidad, descripcion, sector) VALUES
(10001, 'u01', 'auxiliar de celador', 'vigilancia'),
(10002, 'u01', 'celador', 'vigilancia'),
(10003, 'u01', 'garitero', 'seguridad externa'),
(10004, 'u02', 'auxiliar de celador', 'vigilancia'),
(10005, 'u02', 'celador', 'vigilancia'),
(10006, 'u02', 'garitero', 'seguridad externa'),
(10007, 'u03', 'auxiliar de celador', 'vigilancia'),
(10008, 'u03', 'celador', 'vigilancia'),
(10009, 'u03', 'garitero', 'seguridad externa'),
(10010, 'u04', 'auxiliar de celador', 'vigilancia'),
(10011, 'u04', 'celador', 'vigilancia'),
(10012, 'u04', 'garitero', 'seguridad externa'),
(10013, 'u11', 'auxiliar de celador', 'vigilancia'),
(10014, 'u11', 'celador', 'vigilancia'),
(10015, 'u11', 'garitero', 'seguridad externa');

-- Inserción de Penitenciarios
INSERT INTO penitenciarios (legajo, dni, jerarquia, nombre, apellido, domicilio, localidad, puesto, unidad, nacimiento) VALUES
(10001, 12345678, 'sub-ayudante', 'Juan', 'Gonzalez', 'Calle 123', 'Santa Fe', 10001, 'u01', '1990-01-01'),
(10002, 23456789, 'ayudante de 5ta', 'Pedro', 'Martinez', 'Calle 456', 'Rosario', 10002, 'u02', '1985-02-02'),
(10003, 34567890, 'ayudante de 4ta', 'Diego', 'Lopez', 'Calle 789', 'Rafaela', 10003, 'u03', '1980-03-03'),
(10004, 45678901, 'ayudante de 3ra', 'Carlos', 'Rodriguez', 'Calle 012', 'Venado Tuerto', 10004, 'u04', '1975-04-04'),
(10005, 56789012, 'ayudante de 2da', 'Luis', 'Sanchez', 'Calle 345', 'Esperanza', 10005, 'u05', '1970-05-05'),
(10006, 67890123, 'subayudante', 'Roberto', 'Fernandez', 'Calle 678', 'Santa Fe', 10006, 'u06', '1988-06-06'),
(10007, 78901234, 'ayudante de 5ta', 'Jorge', 'Garcia', 'Calle 901', 'Rosario', 10007, 'u07', '1987-07-07'),
(10008, 89012345, 'ayudante de 4ta', 'Mario', 'Perez', 'Calle 234', 'Rafaela', 10008, 'u08', '1986-08-08'),
(10009, 90123456, 'ayudante de 3ra', 'Gonzalo', 'Lopez', 'Calle 345', 'Venado Tuerto', 10009, 'u05', '1985-09-09'),
(10010, 12345679, 'ayudante de 2da', 'Martin', 'Sanchez', 'Calle 456', 'Esperanza', 10010, 'u11', '1984-10-10'),
(10011, 23456790, 'subayudante', 'Julian', 'Fernandez', 'Calle 567', 'Santa Fe', 10011, 'u01', '1983-11-11'),
(10012, 34567891, 'ayudante de 5ta', 'Eduardo', 'Garcia', 'Calle 678', 'Rosario', 10012, 'u02', '1982-12-12'),
(10013, 45678902, 'ayudante de 4ta', 'Ricardo', 'Perez', 'Calle 789', 'Rafaela', 10013, 'u03', '1981-01-01'),
(10014, 56789013, 'ayudante de 3ra', 'Emilio', 'Lopez', 'Calle 890', 'Venado Tuerto', 10014, 'u04', '1980-02-02'),
(10015, 67890124, 'ayudante de 2da', 'Fernando', 'Sanchez', 'Calle 901', 'Esperanza', 10015, 'u05', '1979-03-03');

-- Inserción de Pabellones
INSERT INTO pabellones (pabellon_id, unidad, numero_pabellon, plantas, celador, auxiliar) VALUES
(10010, 'u11', 1, 1, 10006, 10015),
(10011, 'u06', 2, 1, 10007, 10001),
(10012, 'u02', 1, 1, 10008, 10014),
(10013, 'u02', 2, 1, 10009, 10002),
(10014, 'u01', 1, 1, 10010, 10003),
(10015, 'u01', 2, 1, 10011, 10004),
(10016, 'u01', 1, 1, 10012, 10005),
(10017, 'u02', 2, 1, 10013, 10014);



-- Insertando datos para internos masculinos
INSERT INTO internos (mat, dni, nombre, apellido, ciudad, domicilio, nacimiento, conducta, causa, unidad, pabellon, ingreso, hijos, visitas)
VALUES
    (12345, 12345678, 'Juan', 'López', 'Rosario', 'Calle 1 123', '1980-01-01', 4.25, 'Robo', 'u02', 10013, '2010-05-15', 'Pedro López, María López', 'María González'),
    (23456, 23456789, 'Pedro', 'Martínez', 'Santa Fe', 'Calle 2 456', '1975-02-02', 3.75, 'Homicidio', 'u02', 10013, '2012-08-20', '', 'José Martínez'),
    (34567, 34567890, 'Pablo', 'Gómez', 'Rosario', 'Calle 3 789', '1988-03-03', 4.50, 'Estafa', 'u02', 10013, '2015-11-10', 'Lucía Gómez', ''),
    (45678, 45678901, 'José', 'Fernández', 'Rosario', 'Calle 4 012', '1982-04-04', 4.00, 'Secuestro', 'u02', 10013, '2018-03-05', 'Carlos Fernández', 'Ana Fernández'),
    (56789, 56789012, 'Miguel', 'Rodríguez', 'Santa Fe', 'Calle 5 345', '1979-05-05', 4.75, 'Tráfico de drogas', 'u02', 10013, '2020-07-12', '', 'Laura Rodríguez'),
    (67890, 67890123, 'Roberto', 'López', 'Rosario', 'Calle 6 678', '1985-06-06', 3.25, 'Lesiones', 'u02', 10013, '2019-09-18', '', ''),
    (78901, 78901234, 'Carlos', 'González', 'Rosario', 'Calle 7 901', '1976-07-07', 3.50, 'Robo', 'u02', 10013, '2016-12-30', 'María González', 'Juan González'),
    (89012, 89012345, 'Jorge', 'Martínez', 'Santa Fe', 'Calle 8 234', '1987-08-08', 4.25, 'Fraude', 'u02', 10013, '2013-04-25', 'Laura Martínez', ''),
    (90123, 90123456, 'Gustavo', 'Sánchez', 'Rosario', 'Calle 9 567', '1984-09-09', 4.50, 'Homicidio', 'u02', 10013, '2017-06-08', '', 'Pedro Sánchez'),
    (10111, 10111234, 'Héctor', 'Pérez', 'Santa Fe', 'Calle 10 890', '1981-10-10', 3.75, 'Lesiones', 'u02', 10013, '2011-01-28', 'Ana Pérez', 'Luis Pérez'),
    (11112, 11121345, 'Daniel', 'Gómez', 'Rosario', 'Calle 11 111', '1989-11-11', 3.00, 'Estafa', 'u02', 10013, '2014-02-14', '', 'Lucía Gómez'),
    (12113, 12131456, 'Marcelo', 'Fernández', 'Santa Fe', 'Calle 12 112', '1978-12-12', 4.00, 'Secuestro', 'u02', 10013, '2010-10-30', '', 'Carlos Fernández'),
    (13114, 13141567, 'Raúl', 'Rodríguez', 'Rosario', 'Calle 13 113', '1983-01-13', 4.25, 'Tráfico de drogas', 'u02', 10013, '2016-05-22', 'Laura Rodríguez', 'José Rodríguez'),
    (14115, 14151678, 'Alberto', 'López', 'Santa Fe', 'Calle 14 114', '1980-02-14', 3.50, 'Lesiones', 'u02', 10013, '2018-08-17', '', ''),
    (15116, 15161789, 'Luis', 'González', 'Rosario', 'Calle 15 115', '1977-03-15', 4.75, 'Robo', 'u02', 10013, '2015-12-05', '', 'María González'),
    (12346, 12345679, 'Eduardo', 'Fernández', 'Santa Fe', 'Calle 16 123', '1985-04-16', 3.75, 'Estafa', 'u01', 10014, '2010-06-20', 'Juan Fernández, María Fernández', 'Pedro López'),
	(23457, 23456780, 'Marcos', 'Martínez', 'Rosario', 'Calle 17 234', '1970-05-17', 4.25, 'Homicidio', 'u01', 10014, '2012-09-25', '', 'José Martínez'),
	(34568, 34567891, 'Sergio', 'Gómez', 'Santa Fe', 'Calle 18 345', '1988-06-18', 4.50, 'Estafa', 'u02', 10014, '2015-12-12', 'Lucía Gómez', ''),
	(45679, 45678902, 'Martín', 'Fernández', 'Rosario', 'Calle 19 456', '1982-07-19', 4.00, 'Robo', 'u02', 10014, '2018-04-15', 'Carlos Fernández', 'Ana Fernández'),
	(56780, 56789013, 'Nicolás', 'Rodríguez', 'Santa Fe', 'Calle 20 567', '1979-08-20', 4.75, 'Secuestro', 'u03', 10014, '2020-08-22', '', 'Laura Rodríguez'),
	(67891, 67890124, 'Gonzalo', 'López', 'Rosario', 'Calle 21 678', '1985-09-21', 3.25, 'Lesiones', 'u03', 10014, '2019-10-18', '', ''),
	(78902, 78901235, 'Carlos', 'González', 'Rosario', 'Calle 22 789', '1976-10-22', 3.50, 'Robo', 'u04', 10014, '2016-01-30', 'María González', 'Juan González'),
	(89013, 89012346, 'Javier', 'Martínez', 'Santa Fe', 'Calle 23 890', '1987-11-23', 4.25, 'Fraude', 'u04', 10015, '2013-05-25', 'Laura Martínez', ''),
	(90124, 90123457, 'Gustavo', 'Sánchez', 'Rosario', 'Calle 24 901', '1984-12-24', 4.50, 'Homicidio', 'u05', 10015, '2017-07-08', '', 'Pedro Sánchez'),
	(10112, 10111235, 'Hernán', 'Pérez', 'Santa Fe', 'Calle 25 101', '1981-01-25', 3.75, 'Lesiones', 'u05', 10015, '2011-02-28', 'Ana Pérez', 'Luis Pérez'),
	(11113, 11121346, 'Daniel', 'Gómez', 'Rosario', 'Calle 26 111', '1989-02-26', 3.00, 'Estafa', 'u06', 10014, '2014-03-14', '', 'Lucía Gómez'),
	(12114, 12131457, 'Marcelo', 'Fernández', 'Santa Fe', 'Calle 27 112', '1978-03-27', 4.00, 'Secuestro', 'u06', 10015, '2010-11-30', '', 'Carlos Fernández'),
	(13115, 13141568, 'Raúl', 'Rodríguez', 'Rosario', 'Calle 28 113', '1983-04-28', 4.25, 'Tráfico de drogas', 'u11', 10014, '2016-06-22', 'Laura Rodríguez', 'José Rodríguez'),
	(14116, 14151679, 'Alberto', 'López', 'Santa Fe', 'Calle 29 114', '1980-05-29', 3.50, 'Lesiones', 'u11', 10014, '2018-09-17', '', ''),
	(15117, 15161780, 'Luis', 'González', 'Rosario', 'Calle 30 115', '1977-06-30', 4.75, 'Robo', 'u11', 10015, '2015-01-05', '', 'María González'),
	(16118, 16171891, 'Eduardo', 'Fernández', 'Santa Fe', 'Calle 31 123', '1985-07-16', 3.75, 'Estafa', 'u11', 10014, '2010-07-20', 'Juan Fernández, María Fernández', 'Pedro López'),
	(17119, 17181902, 'Marcos', 'Martínez', 'Rosario', 'Calle 32 234', '1970-08-17', 4.25, 'Homicidio', 'u02', 10014, '2012-10-25', '', 'José Martínez'),
	(18120, 18192013, 'Sergio', 'Gómez', 'Santa Fe', 'Calle 33 345', '1988-09-18', 4.50, 'Estafa', 'u02', 10015, '2015-11-12', 'Lucía Gómez', ''),
	(19121, 19202134, 'Martín', 'Fernández', 'Rosario', 'Calle 34 456', '1982-10-19', 4.00, 'Robo', 'u11', 10015, '2018-05-15', 'Carlos Fernández', 'Ana Fernández'),
	(20122, 20212245, 'Nicolás', 'Rodríguez', 'Santa Fe', 'Calle 35 567', '1979-11-20', 4.75, 'Secuestro', 'u11', 10015, '2020-09-22', '', 'Laura Rodríguez');

-- Inserción de Visitas
INSERT INTO visitas (visita_id, dni, nombre, apellido, ciudad, domicilio, nacimiento, interno, relacion, unidad, sanciones)
VALUES
(12345, 87654321, 'María', 'González', 'Rosario', 'Calle 36 678', '1980-01-01', 12345, 'madre', 'u02', 10009),
(23456, 76543218, 'José', 'Martínez', 'Santa Fe', 'Calle 37 789', '1975-02-02', 23456, 'padre', 'u02', NULL),
(34567, 65432187, 'Lucía', 'Gómez', 'Rosario', 'Calle 38 890', '1988-03-03', 34567, 'hermana', 'u02', 10008),
(45678, 54321876, 'Carlos', 'Fernández', 'Rosario', 'Calle 39 901', '1982-04-04', 45678, 'hermano', 'u02', 10010),
(56789, 43218765, 'Laura', 'Rodríguez', 'Santa Fe', 'Calle 40 012', '1979-05-05', 56789, 'pareja', 'u02', 10006),
(67890, 32187654, 'Roberto', 'López', 'Rosario', 'Calle 41 123', '1985-06-06', 67890, 'padre', 'u02', 10007),
(78901, 21876543, 'Juan', 'González', 'Rosario', 'Calle 42 234', '1976-07-07', 78901, 'hijo', 'u02', NULL),
(89012, 18765432, 'Laura', 'Martínez', 'Santa Fe', 'Calle 43 345', '1987-08-08', 89012, 'madre', 'u02', 10004),
(90123, 87654321, 'Pedro', 'Sánchez', 'Rosario', 'Calle 44 456', '1984-09-09', 90123, 'hijo', 'u02', NULL),
(10111, 76543218, 'Ana', 'Pérez', 'Santa Fe', 'Calle 45 567', '1981-10-10', 10111, 'pareja', 'u02', 10002),
(11112, 65432187, 'Lucía', 'Gómez', 'Rosario', 'Calle 46 678', '1989-11-11', 11112, 'hija', 'u02', NULL),
(12113, 54321876, 'Carlos', 'Fernández', 'Santa Fe', 'Calle 47 789', '1978-12-12', 12113, 'padre', 'u02', 10005),
(13114, 43218765, 'Laura', 'Rodríguez', 'Rosario', 'Calle 48 890', '1983-01-13', 13114, 'madre', 'u02', 10003),
(14115, 32187654, 'Ana', 'Fernández', 'Santa Fe', 'Calle 49 901', '1980-02-14', 14115, 'hermana', 'u02', NULL),
(15116, 21876543, 'María', 'González', 'Rosario', 'Calle 50 012', '1977-03-15', 15116, 'madre', 'u02', 10001);

-- Inserción de Sanciones de Visitas
INSERT INTO sanciones_visitas (sancion_id, motivo, dias_sancion, fecha)
VALUES
(10001, 'conducta indebida', 3, '2020-03-20'),
(10002, 'no acatamiento de las ordenes', 2, '2021-03-21'),
(10003, 'falta a la seguridad', 4, '2020-03-22'),
(10004, 'intentó de ingresar objeto prohibido', 5, '2020-03-23'),
(10005, 'conducta indebida', 3, '2020-03-24'),
(10006, 'no acatamiento de las ordenes', 2, '2020-03-25'),
(10007, 'falta a la seguridad', 4, '2021-03-26'),
(10008, 'intentó de ingresar objeto prohibido', 5, '2021-03-27'),
(10009, 'conducta indebida', 3, '2022-03-28'),
(10010, 'no acatamiento de las ordenes', 2, '2022-03-29');
