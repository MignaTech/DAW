--
-- Tarea PracticaBD_1raParte
-- Creado por Miguel Angel Sixtega Escribano
--

CREATE TYPE persona AS (
    nombre TEXT,
    ap_pat TEXT,
    ap_mat TEXT,
    direccion TEXT,
    telefono VARCHAR(11),
    celular VARCHAR(11),
    email TEXT,
    fech_nac DATE
);
CREATE TABLE IF NOT EXISTS tipoContrato(
	idContrato INT NOT NULL,
	contrato VARCHAR(16),
	CONSTRAINT pk_tipoContrato PRIMARY KEY(idContrato)
);
CREATE TABLE IF NOT EXISTS tipoEstudio(
	idEstudio INT NOT NULL,
	estudio VARCHAR(13),
	CONSTRAINT pk_tipoEstudio PRIMARY KEY(idEstudio)
);
CREATE TABLE IF NOT EXISTS tipoMateria(
	idMateria INT NOT NULL,
	materia VARCHAR(17),
	CONSTRAINT pk_tipoMateria PRIMARY KEY(idMateria)
);
CREATE TABLE IF NOT EXISTS esp(
	idEsp INT NOT NULL,
	esp TEXT,
	CONSTRAINT pk_esp PRIMARY KEY(idEsp)
);
CREATE TABLE IF NOT EXISTS profesores(
	idProfesor INT NOT NULL,
	datoPro persona,
	contrato_fk INT NOT NULL,
	esp_fk INT NOT NULL,
	estudio_fk INT NOT NULL,
	casa_estudio VARCHAR(20) NOT NULL,
	CONSTRAINT pk_Profesor PRIMARY KEY(idProfesor),
	FOREIGN KEY(contrato_fk) REFERENCES tipoContrato(idContrato) ON DELETE CASCADE,
	FOREIGN KEY(esp_fk) REFERENCES esp(idEsp) ON DELETE CASCADE,
	FOREIGN KEY(estudio_fk) REFERENCES tipoEstudio(idEstudio) ON DELETE CASCADE
);
CREATE TABLE IF NOT EXISTS materias(
	codMateria INT NOT NULL,
	materia TEXT NOT NULL,
	creditos INT,
	horasSemana INT,
	tipoMat_fk INT NOT NULL,
	profe_fk INT,
	CONSTRAINT pk_Materia PRIMARY KEY(codMateria),
	FOREIGN KEY(tipoMat_fk) REFERENCES tipoMateria(idMateria) ON DELETE CASCADE,
	FOREIGN KEY(profe_fk) REFERENCES profesores(idProfesor) ON DELETE CASCADE
);
CREATE TABLE IF NOT EXISTS semestre(
	codSemestre INT NOT NULL,
	semestre INT,
	CONSTRAINT pk_Semestre PRIMARY KEY(codSemestre)
);
CREATE TABLE IF NOT EXISTS cursos(
	codCurso INT NOT NULL,
	materia_fk INT NOT NULL,
	profeC_fk INT NOT NULL,
	semestre_fk INT NOT NULL,
	horario DATE,
	cupo INT,
	CONSTRAINT pk_Curso PRIMARY KEY(codCurso),
	FOREIGN KEY(materia_fk) REFERENCES materias(codMateria) ON DELETE CASCADE,
	FOREIGN KEY(profeC_fk) REFERENCES profesores(idProfesor) ON DELETE CASCADE,
	FOREIGN KEY(semestre_fk) REFERENCES semestre(codSemestre) ON DELETE CASCADE
);
CREATE TABLE IF NOT EXISTS alumnos(
	matricula VARCHAR(12) NOT NULL,
	datoAlu persona,
	CONSTRAINT pk_alumno PRIMARY KEY(matricula)
);
CREATE TABLE IF NOT EXISTS salones(
	codSalon INT NOT NULL,
	lugar TEXT NOT NULL,
	numPupitres INT,
	CONSTRAINT pk_Salon PRIMARY KEY(codSalon)	
);
CREATE TABLE IF NOT EXISTS cursoAlumno(
	matricula_fk VARCHAR(12) NOT NULL,
	cursoAlum_fk INT NOT NULL,
	calificacion DECIMAL(2,2),
	inscripcion INT,
	CONSTRAINT pk_cursoAlumno PRIMARY KEY (matricula_fk, cursoAlum_fk),
	FOREIGN KEY(matricula_fk) REFERENCES alumnos(matricula) ON DELETE CASCADE,
	FOREIGN KEY(cursoAlum_fk) REFERENCES cursos(codCurso) ON DELETE CASCADE
);
CREATE TABLE IF NOT EXISTS cursoSalon(
	curso_fk INT NOT NULL,
	salon_fk INT NOT NULL,
	dia DATE,
	CONSTRAINT pk_cursoSalon PRIMARY KEY (curso_fk, salon_fk),
	FOREIGN KEY(curso_fk) REFERENCES cursos(codCurso) ON DELETE CASCADE,
	FOREIGN KEY(salon_fk) REFERENCES salones(codSalon) ON DELETE CASCADE
);
