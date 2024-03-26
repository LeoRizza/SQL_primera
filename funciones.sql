/*
Función: Obtener ubicación de un interno
*/
DELIMITER $$
CREATE FUNCTION obtenerPabellonYUnidad(mat INT) 
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
    DECLARE pabellon_unidad VARCHAR(255);
    DECLARE pabellon_id INT;
    DECLARE unidad_id VARCHAR(5);

	SELECT pabellon INTO pabellon_id
	FROM internos
	WHERE internos.mat = mat;

    SELECT unidad INTO unidad_id
    FROM pabellones
    WHERE pabellones.pabellon_id = pabellon_id;

    SET pabellon_unidad = CONCAT('El interno se encuentra en el pabellón ', pabellon_id, ' de la unidad ', unidad_id);

    RETURN pabellon_unidad;
END $$
DELIMITER ;

-- Prueba con parámetro matricula
SELECT obtenerPabellonYUnidad(89013);

/*
Función: obtener el apellido, nombre y legajo del celador y el auxiliar de un pabellón mediante el ID del pabellon:
*/

DELIMITER $$
CREATE FUNCTION obtenerCeladorAuxiliar(pabellon_id INT) 
RETURNS VARCHAR(255)
READS SQL DATA
BEGIN
    DECLARE info_empleados VARCHAR(255);
    DECLARE celador_id INT;
    DECLARE auxiliar_id INT;
    DECLARE celador_nombre VARCHAR(100);
    DECLARE auxiliar_nombre VARCHAR(100);

    SELECT celador, auxiliar INTO celador_id, auxiliar_id
    FROM pabellones
    WHERE pabellones.pabellon_id = pabellon_id;

    SELECT CONCAT(apellido, ', ', nombre) INTO celador_nombre
    FROM penitenciarios
    WHERE penitenciarios.legajo = celador_id;

    SELECT CONCAT(apellido, ', ', nombre) INTO auxiliar_nombre
    FROM penitenciarios
    WHERE legajo = auxiliar_id;

    SET info_empleados = CONCAT('Celador: ', celador_nombre, ', Auxiliar: ', auxiliar_nombre);

    RETURN info_empleados;
END $$
DELIMITER ;

-- Prueba con parámetro pabellon_id
SELECT obtenerCeladorAuxiliar(10012);

/*
Stored Procedure: buscarInternosPorMatricula
*/

DELIMITER $$

CREATE PROCEDURE buscarInternosPorMatricula(
    IN matricula INT
)
BEGIN
    SELECT 
        i.nombre AS Nombre,
        i.apellido AS Apellido,
        u.nombre AS Unidad,
        p.numero_pabellon AS Pabellon
    FROM
        internos i
    INNER JOIN unidades u ON i.unidad = u.unidad
    INNER JOIN pabellones p ON i.pabellon = p.pabellon_id
    WHERE
        i.mat = matricula;
END $$

DELIMITER ;

CALL buscarInternosPorMatricula(67890);

/*
Trigger: verificarPuestoAntesDeInsertar -- sobre penitenciarios
*/

DELIMITER $$
CREATE TRIGGER verificarPuestoAntesDeInsertar BEFORE INSERT ON penitenciarios
FOR EACH ROW
BEGIN
    DECLARE puesto_descripcion VARCHAR(255);
    
    SELECT descripcion INTO puesto_descripcion
    FROM puestos
    WHERE puesto_id = NEW.puesto;
    
    IF (puesto_descripcion IS NULL) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El puesto especificado no está asociado a la unidad del penitenciario.';
    END IF;
END$$
DELIMITER ;

