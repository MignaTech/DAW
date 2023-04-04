--
-- Tarea PracticaBD_3raParte
-- Creado por Miguel Angel Sixtega Escribano
--

-- 1. Concatenar nombre y apellidos de la tabla PROFESORES y ordenar por apellido paterno.
SELECT concat((datopro).nombre,' ',(datopro).ap_pat,' ',(datopro).ap_mat) persona
FROM profesores
ORDER BY (datopro).ap_pat ASC;

-- 2. Ver todos los datos de los alumnos cuya edad sea de 22 años.
SELECT matricula, (datoalu).nombre, (datoalu).ap_pat AS apellido_paterno, (datoalu).ap_mat AS apellido_materno,
    (datoalu).direccion, (datoalu).telefono, (datoalu).celular, (datoalu).email, (datoalu).fech_nac, edad
FROM alumnos
WHERE edad = 22;

-- 3. Verlos distintos turnos en los que se imparten los cursos.
SELECT b.materia, a.horario AS Turnos
FROM cursos AS a
INNER JOIN materias AS b ON a.materia_fk = b.codmateria
ORDER BY b.materia ASC;

-- 4. Ver los cursos donde los maestros sean el 1 y 8.
SELECT a.codCurso, c.materia,
a.profec_fk AS idProfesor, concat((b.datopro).nombre,' ',(b.datopro).ap_pat,' ',(b.datopro).ap_mat) AS Profesor
FROM cursos AS a
INNER JOIN profesores AS b ON a.profec_fk = b.idProfesor
INNER JOIN materias AS c ON a.materia_fk = c.codMateria
WHERE profec_fk=1 OR profec_fk=8
ORDER BY a.codCurso;

-- 5. Ver las matrículas de los alumnos cuyas calificación no están entre 100, 95 y 90.
SELECT a.matricula, d.materia, b.calificacion
FROM alumnos AS a
INNER JOIN cursoAlumno AS b ON a.matricula = b.matricula_fk
INNER JOIN cursos AS c ON b.cursoAlum_fk = c.codCurso
INNER JOIN materias AS d ON c.materia_fk = d.codMateria
WHERE b.calificacion < 90
ORDER BY a.matricula ASC;

-- 6. Describir los datos de la tabla alumnos
SELECT column_name, data_type, is_nullable
FROM information_schema.columns
WHERE table_name = 'alumnos';

-- 7. Ver toda la información de los profesores cuya materia sea diferente de Diseño de aplicaciones web.
SELECT a.idProfesor, b.materia,
concat((a.datopro).nombre,' ',(a.datopro).ap_pat,' ',(a.datopro).ap_mat) AS Nombre_Profesor,
(a.datoPro).direccion, (a.datoPro).telefono, (a.datoPro).celular, (a.datoPro).email, (a.datoPro).fech_nac,
c.contrato,d.esp AS Especialidad,e.estudio,a.casa_estudio
FROM profesores AS a
INNER JOIN materias AS b ON a.idProfesor = b.profe_fk
INNER JOIN tipocontrato AS c ON a.contrato_fk = c.idContrato
INNER JOIN esp AS d ON a.esp_fk = d.idEsp
INNER JOIN tipoestudio AS e ON a.estudio_fk = e.idEstudio
WHERE  b.materia != 'Diseño de Aplicaciones Web'
ORDER BY a.idProfesor ASC;

-- 8. Ver nombre y edad de los alumnos cuya edad sea mayor a 18 años.
SELECT concat((datoAlu).nombre,' ',(datoAlu).ap_pat,' ',(datoAlu).ap_mat) AS Nombre, edad
FROM alumnos
WHERE edad > 18;

-- 9. Ver todos los cursos donde el profesor sea el 9 y la materia la 11
SELECT a.codCurso, a.materia_fk, c.materia, profec_fk,
concat((b.datopro).nombre,' ',(b.datopro).ap_pat,' ',(b.datopro).ap_mat) AS Nombre_Profesor
FROM cursos AS a
INNER JOIN profesores AS b ON a.profec_fk = b.idProfesor
INNER JOIN materias AS c ON a.materia_fk = c.codMateria
WHERE a.profec_fk = 9 AND a.materia_fk = 11;

-- 10. Ver matrículas de los alumnos cuyas calificaciones estén entre 70 y 85.
SELECT a.matricula, b.calificacion
FROM alumnos AS a
INNER JOIN cursoAlumno AS b ON a.matricula=b.matricula_fk
WHERE b.calificacion BETWEEN 70 AND 85
ORDER BY b.calificacion ASC;

-- 11. Mostrar el nombre completo de los profesores.
SELECT concat((datopro).nombre,' ',(datopro).ap_pat,' ',(datopro).ap_mat) AS Nombre_Completo_Profesores
FROM profesores;

-- 12. Mostrar la longitud del nombre completo de los profesores.
SELECT concat((datopro).nombre,' ',(datopro).ap_pat,' ',(datopro).ap_mat) AS Nombre_Completo,
length(concat((datopro).nombre,' ',(datopro).ap_pat,' ',(datopro).ap_mat)) AS Longitud_Nombre_Completo
FROM profesores;

-- 13. Mostrar la lada de los teléfonos de los alumnos.
SELECT (datoAlu).telefono, SUBSTRING((datoAlu).telefono, 1, 3) AS Lada
FROM alumnos;

-- 14. Mostrar la fecha de nacimiento de los alumnos con el siguiente formato: Año-Día-Mes ('yyyy-dd-mm").
SELECT (datoAlu).fech_nac AS Fecha_Nacimiento_Formato_Original,
to_char((datoAlu).fech_nac, 'YYYY-DD-MM') AS Fecha_Nacimiento_Formato_Nuevo
FROM alumnos;

-- 15. Mostrar la fecha del jueves siguiente de la fecha de nacimiento de los alumnos.
SELECT (datoAlu).fech_nac AS Fecha_Nacimiento,
to_char((date_trunc('week', (datoAlu).fech_nac) + INTERVAL '1 week' + INTERVAL '3 days'), 'YYYY-MM-DD') AS Jueves_Siguiente
FROM alumnos;

-- 16. Mostrar la calificación promedio de los alumnos
SELECT AVG(calificacion) AS Calificacion_Promedio
FROM cursoAlumno;

-- 17. Mostrar la cantidad de profesores.
SELECT count(idProfesor) AS Cantidad_Profesores
FROM profesores;

-- 18. Mostrar la calificación más alta de los alumnos.
SELECT concat((a.datoAlu).nombre,' ',(a.datoAlu).ap_pat,' ',(a.datoAlu).ap_mat) AS Nombre,
MAX(b.calificacion) AS Calificacion_Mas_Alta
FROM alumnos AS a
INNER JOIN cursoAlumno AS b ON a.matricula=b.matricula_fk
GROUP BY a.matricula;

-- 19. Mostrar la calificación más baja de los alumnos.
SELECT concat((a.datoAlu).nombre,' ',(a.datoAlu).ap_pat,' ',(a.datoAlu).ap_mat) AS Nombre,
MIN(b.calificacion) AS Calificacion_Mas_Baja
FROM alumnos AS a
INNER JOIN cursoAlumno AS b ON a.matricula=b.matricula_fk
GROUP BY a.matricula;

-- 20. Mostrar a los alumnos cuya calificación es superior al promedio.
SELECT concat((b.datoAlu).nombre,' ',(b.datoAlu).ap_pat,' ',(b.datoAlu).ap_mat) AS Nombre,
d.materia AS Materia, a.calificacion AS Calificacion_Superior_Promedio
FROM cursoAlumno AS a
INNER JOIN alumnos AS b ON a.matricula_fk = b.matricula
INNER JOIN cursos AS c ON a.cursoAlum_fk = c.codCurso
INNER JOIN materias AS d ON c.materia_fk = d.codMateria
WHERE a.calificacion > (SELECT AVG(calificacion) FROM cursoAlumno);

-- 21. Mostrar a los alumnos y los cursos que toman.
SELECT concat((a.datoAlu).nombre,' ',(a.datoAlu).ap_pat,' ',(a.datoAlu).ap_mat) AS Nombre_Alumno,
d.materia AS Curso
FROM alumnos AS a
INNER JOIN cursoAlumno AS b ON a.matricula = b.matricula_fk
INNER JOIN cursos AS c ON b.cursoAlum_fk = c.codCurso
INNER JOIN materias AS d ON c.materia_fk = d.codMateria
ORDER BY b;

-- 22. Mostrar los alumnos cuyo nombre empiecen con 'A'.
SELECT matricula, concat((datoAlu).nombre,' ',(datoAlu).ap_pat,' ',(datoAlu).ap_mat) AS Nombre
FROM alumnos
WHERE (datoAlu).nombre  LIKE 'A%';

-- 23. Mostrar todos los alumno tengan o no curso asignado.
SELECT a.matricula, CONCAT((a.datoAlu).nombre,' ',(a.datoAlu).ap_pat,' ',(a.datoAlu).ap_mat) AS Nombre,
COALESCE(d.materia, 'Sin Curso') AS Curso_Asignado
FROM alumnos AS a
LEFT JOIN cursoAlumno AS b ON a.matricula = b.matricula_fk
LEFT JOIN cursos AS c ON b.cursoAlum_fk = c.codCurso
LEFT JOIN materias AS d ON c.materia_fk = d.codMateria;

-- 24. Mostrar todos los cursos tengan o no alumnos asignados.
SELECT a.codCurso, c.materia AS Curso, COALESCE(COUNT(DISTINCT b.matricula_fk), 0) AS Alumnos_Asignados
FROM cursos AS a
LEFT JOIN cursoAlumno AS b ON a.codCurso = b.cursoAlum_fk
LEFT JOIN materias AS c ON a.materia_fk = c.codMateria
GROUP BY a.codCurso, c.materia;

-- 25. Actualizar el correo del alumno 25.
SELECT * FROM alumnos WHERE matricula LIKE 'zs19002948';
UPDATE alumnos
SET datoAlu.email='KevinSalgadoGomez1@gmail.com'
WHERE matricula='zs19002948';
SELECT * FROM alumnos WHERE matricula LIKE 'zs19002948';

-- 26. Borrar al profesor cuyo ID sea el 2.
SELECT * FROM profesores WHERE idProfesor = 2;
DELETE FROM profesores WHERE idProfesor = 2;
SELECT * FROM profesores WHERE idProfesor = 2;

-- 27. Eliminar los datos de la tabla cursosalon.
SELECT * FROM cursoSalon;
DELETE FROM cursoSalon;
SELECT * FROM cursoSalon;

-- 28. Bloquear una de las tablas permitiendo candados en modo share.
BEGIN;
LOCK TABLE tipocontrato IN SHARE MODE;
COMMIT;

-- 29. Modificar la tabla de alumnos para ampliar el campo email.
ALTER TABLE alumnos ALTER COLUMN datoAlu.email TYPE VARCHAR(100);

-- 30. Seleccionar las cinco mejores calificaciones.
SELECT concat((datoAlu).nombre,' ',(datoAlu).ap_pat,' ',(datoAlu).ap_mat) AS Nombre,
b.calificacion AS Mejor_Calificacion
FROM alumnos AS a
INNER JOIN cursoAlumno AS b ON a.matricula=b.matricula_fk
ORDER BY b.calificacion DESC
LIMIT 5;
