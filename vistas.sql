-- Vista: DetallesInternos
CREATE VIEW DetallesInternos AS
SELECT internos.mat, internos.dni, internos.nombre, internos.apellido, internos.ciudad, 
       internos.causa, internos.conducta, internos.domicilio, internos.nacimiento, 
       internos.ingreso, internos.hijos, pabellones.numero_pabellon, unidades.nombre AS nombre_unidad
FROM internos
INNER JOIN pabellones ON internos.pabellon = pabellones.pabellon_id
INNER JOIN unidades ON internos.unidad = unidades.unidad;

-- Vista: DetallesVisitas
CREATE VIEW DetallesVisitas AS
SELECT visitas.visita_id, visitas.dni, visitas.nombre, visitas.apellido, visitas.ciudad, 
       visitas.domicilio, visitas.relacion, visitas.nacimiento, visitas.interno, visitas.unidad, 
       sanciones_visitas.motivo AS motivo_sancion
FROM visitas
INNER JOIN unidades ON visitas.unidad = unidades.unidad
LEFT JOIN sanciones_visitas ON visitas.sanciones = sanciones_visitas.sancion_id;

-- Vista: DetallesPenitenciarios
CREATE VIEW DetallesPenitenciarios AS
SELECT penitenciarios.legajo, penitenciarios.dni, penitenciarios.jerarquia, penitenciarios.nombre, 
       penitenciarios.apellido, penitenciarios.domicilio, penitenciarios.localidad, penitenciarios.funcion, 
       unidades.nombre AS nombre_unidad, puestos.sector
FROM penitenciarios
INNER JOIN unidades ON penitenciarios.unidad = unidades.unidad
INNER JOIN puestos ON penitenciarios.puesto = puestos.puesto_id;

-- Vista: DetallesPabellones
CREATE VIEW DetallesPabellones AS
SELECT pabellones.pabellon_id, pabellones.numero_pabellon, pabellones.plantas, unidades.nombre AS nombre_unidad,
       penitenciarios_celador.nombre AS nombre_celador, penitenciarios_auxiliar.nombre AS nombre_auxiliar
FROM pabellones
INNER JOIN unidades ON pabellones.unidad = unidades.unidad
INNER JOIN penitenciarios AS penitenciarios_celador ON pabellones.celador = penitenciarios_celador.legajo
INNER JOIN penitenciarios AS penitenciarios_auxiliar ON pabellones.auxiliar = penitenciarios_auxiliar.legajo;

-- Vista: DetallesSancionesVisitas
CREATE VIEW DetallesSancionesVisitas AS
SELECT sanciones_visitas.sancion_id, sanciones_visitas.motivo, sanciones_visitas.dias_sancion, sanciones_visitas.fecha,
       visitas.dni, visitas.nombre, visitas.apellido
FROM sanciones_visitas
INNER JOIN visitas ON sanciones_visitas.sancion_id = visitas.sanciones;
