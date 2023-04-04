--
-- Tarea PracticaBD_2daParte
-- Creado por Miguel Angel Sixtega Escribano
--

-- Modificaciones
ALTER TABLE profesores ALTER COLUMN casa_estudio TYPE TEXT;
ALTER TABLE cursos ALTER COLUMN horario TYPE VARCHAR(6);
ALTER TABLE cursoAlumno ALTER COLUMN calificacion TYPE INT;
ALTER TABLE cursoSalon ALTER COLUMN dia TYPE VARCHAR(40);

INSERT INTO tipoContrato VALUES
(1,'Planta'),
(2,'Tiempo Completo'),
(3,'Medio Tiempo'),
(4,'Asignatura'),
(5,'Temporal');

INSERT INTO tipoEstudio VALUES
(1, 'Licenciatura'),
(2, 'Maestría'),
(3, 'Doctorado');

INSERT INTO tipoMateria VALUES
(1, 'Teórica'),
(2, 'Teórico/Práctica'),
(3, 'Práctica');

INSERT INTO esp VALUES
(1,'Desarrollo de Software'),
(2,'Ingeniería Electrónica'),
(3,'Inteligencia Artificial'),
(4,'Matemáticas Aplicadas'),
(5,'Sistemas Operativos'),
(6,'Ingeniería Financiera'),
(7,'Programación Web'),
(8,'Ingeniería de Procesos'),
(9,'Ingeniería de Sistemas'),
(10,'Gestión Empresarial'),
(11,'Programación Orientada a Objetos'),
(12,'Gestión de Redes');

INSERT INTO profesores VALUES
(1,row('Yuliana', 'Berumen','Diaz','Calle Miguel Lerdo de Tejada #100, Centro, Veracruz','2221234567','2295678901','yberumen@uv.mx','1990-05-03'),1,1,3,'Universidad Autónoma de Baja California'),
(2,row('Luis Felipe', 'Marin','Urias','Avenida Salvador Díaz Mirón #200, Boca del Río','2222345678','2296789012','luismarin@uv.mx','1985-02-02'),1,3,3,'Universidad Nacional Autónoma de México'),
(3,row('Gonzalo Antonio', 'Sosa','Malaga','Calle Allende #300, Zona Centro, Veracruz','2223456789','2297890123','gososa@uv.mx','1980-04-03'),1,7,3,'Instituto Tecnológico y de Estudios Superiores de Monterrey'),
(4,row('Lluvia', 'Bazan','Pina','Boulevard Adolfo Ruiz Cortines #400, Costa de Oro, Boca del Río','2224567890','2298901234','lbazan@uv.mx','1975-05-05'),2,2,2,'Universidad Veracruzana '),
(5,row('Diana Ivette','Montejo','Arrollo','Avenida Veracruz #500, Las Américas, Veracruz','2225678901','2299012345','dmontejo@uv.mx','1990-03-18'),1,4,3,'Universidad Autónoma de San Luis Potosí '),
(6,row('Carlos Arturo','Ceron','Alvarez','Calle Juan de la Luz Enríquez #600, Zona Centro, Veracruz','2226789012','2290123456','cceron@uv.mx','1988-07-24'),2,8,1,'Universidad Michoacana de San Nicolás de Hidalgo'),
(7,row('Raul','Juarez','Aguirre','Boulevard Manuel Ávila Camacho #700, Costa de Oro, Boca del Río','2227890123','2291234567','rauljuarez@uv.mx','1982-12-05'),4,2,2,'Instituto Politécnico Nacional'),
(8,row('Juana Gabriela','Ponce','Martínez','Calle Juárez #800, Centro, Coatzacoalcos, Veracruz','2228901234','2292345678','gamendoza@uv.mx','1974-09-12'),2,10,1,'Instituto Politécnico Nacional'),
(9,row('Rosa Maria','Woo','Garcia','Avenida Díaz Mirón #900, Playa Linda, Boca del Río','2229012345','2293456789','rwoo@uv.mx','1983-06-29'),1,2,3,'Universidad Veracruzana'),
(10,row('Pedro','Diaz','Abascal','Calle Revolución #1000, Zona Centro, Veracruz','2221357902','2298765432','pedrodiaz@uv.mx','1979-04-03'),4,11,2,'Universidad Autónoma de Aguascalientes'),
(11,row('Josue Shinoe','Munguia','Tiburcio','Boulevard Ruiz Cortines #1100, Miguel Alemán, Veracruz','2222468013','2292389745','shinee@uv.mx','1980-05-15'),1,12,1,'Universidad Veracruzana'),
(12,row('Joel','Lopez','Castro','Avenida Ejército Mexicano #1200, Zona Centro,Veracruz','2229753104','2299876543','joelopez@uv.mx','1978-08-22'),2,10,1,'Universidad Veracruzana');

INSERT INTO materias VALUES
(1, 'Diseño de Aplicaciones Web',4,6,2,1),
(2, 'Microprocesadores y Microcontroladores',5,7,2,9),
(3, 'Introducción a la Intelig. Artificial',5,8,2,2),
(4, 'Programación Orientada a Objetos',5,8,2,10),
(5, 'Ingeniería de software',5,8,1,5),
(6, 'Tecnologías y Aplicaciones móviles',4,6,2,3),
(7, 'Ecuaciones Diferenciales',5,8,1,8),
(8, 'Sistemas Operativos',5,8,1,11),
(9, 'Estructura de datos',5,8,2,2),
(10, 'Matemáticas Discretas',5,8,1,5),
(11, 'Electrónica',3,6,2,7),
(12, 'Fundamentos de Redes de Computadoras',4,6,1,6);

INSERT INTO semestre VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10);

INSERT INTO cursos VALUES
(1,1,1,6,'11:00',32),
(2,11,4,4,'15:00',38),
(3,8,11,4,'14:00',34),
(4,6,3,6,'17:00',30),
(5,9,2,4,'10:00',20),
(6,2,9,6,'10:00',31),
(7,12,11,4,'08:00',39),
(8,5,5,6,'09:00',35),
(9,7,1,4,'17:00',27),
(10,4,10,6,'07:00',42),
(11,3,2,6,'07:00',36),
(12,11,12,4,'15:00',34),
(13,4,1,6,'10:00',32),
(14,10,5,4,'10:00',39),
(15,8,6,4,'07:00',34),
(16,11,7,4,'14:00',24),
(17,7,8,4,'13:00',27),
(18,2,7,6,'09:00',31),
(19,3,6,6,'14:00',35),
(20,5,6,6,'16:00',30);

INSERT INTO alumnos VALUES
('zs19002949',row('Miguel Angel', 'Sixtega','Escribano','Circuitos las aves 14800,Fracc.Puente Moreno','2294125896','2292683367','migna0519@gmail.com','1995-05-19')),
('zs18001449',row('Luis Angel','Arias','Romero','Av. Independencia #200, Veracruz','7824272610','1003006514','zs18001449@estudiantes.uv.mx','1997-06-14')),
('zs20004612',row('Luis Manuel','Bastian','Islas','Blvd. Manuel Ávila Camacho #1125, Boca del Río','4104768723','7402307756','zs20004612@estudiantes.uv.mx','2000-02-23')),
('zs19002909',row('Alejandro','Cagal','Lucho','Calle Tampico #34, Veracruz','3103336626','7227202760','zs19002909@estudiantes.uv.mx','1999-11-01')),
('zs17020662',row('Eduardo','Cervantes','Saavedra','Av. Miguel Alemán #505, Boca del Río','9403195189','8907218913','zs17020662@estudiantes.uv.mx','2003-08-09')),
('zs18001450',row('Jose Pablo','Cortes','Riera','Calle Heroico Colegio Militar #56, Veracruz','6986110484','4154113349','zs18001450@estudiantes.uv.mx','1998-04-27')),
('zs19002906',row('Julio Cesar','Cortez','Moreno','Blvd. Adolfo Ruiz Cortines #3050, Boca del Río','3965644544','9028795525','zs19002906@estudiantes.uv.mx','2002-07-18')),
('zs19002905',row('Naomi','Espinosa','Cosme','Calle Dr. Rafael Lucio #39, Veracruz','5781442857','7661049433','zs19002905@estudiantes.uv.mx','2004-01-02')),
('zs18001420',row('Jonathan','Ferto','de los Rios','Av. Ruiz Cortines #1414, Boca del Río','1015657683','5297961932','zs18001420@estudiantes.uv.mx','1996-09-25')),
('zs19022216',row('Dalia Julissa','Galindo','Castillo','Calle Juan Soto #78, Veracruz','2319238800','5773211046','zs19022216@estudiantes.uv.mx','1997-03-12')),
('zs19002904',row('Eduardo','Garcia','Lopez','Av. Urano #330, Boca del Río','1425118713','7848578881','zs19002904@estudiantes.uv.mx','2001-12-05')),
('zs19022210',row('Kenedy Alonso','Garcia','Arcos','Calle Francisco Canal #97, Veracruz','4344668078','7171062679','zs19022210@estudiantes.uv.mx','1995-11-21')),
('zs20004630',row('Osmar','Hernandez','Duran','Av. Ignacio de la Llave #105, Boca del Río','6051357249','9467289331','zs20004630@estudiantes.uv.mx','2003-05-16')),
('zs19022226',row('Damara Elizabet','Herrera','Sanchez','Calle 5 de Mayo #101, Veracruz','4027143012','1791223963','zs19022226@estudiantes.uv.mx','2002-11-03')),
('zs19002939',row('Holly Abigail','Huerta','Prado','Av. Presidente Masaryk #435, Boca del Río','4003468075','5947431355','zs19002939@estudiantes.uv.mx','1996-06-30')),
('zs18001452',row('Emanuel','Lucho','Xala','Calle Orizaba #163, Veracruz','7113626166','4909097286','zs18001452@estudiantes.uv.mx','1999-09-28')),
('zs18018271',row('Felix Daniel','Martinez','Barradas','Av. Paseo del Malecón #198, Boca del Río','3212379200','2226207759','zs18018271@estudiantes.uv.mx','1998-03-01')),
('zs19022223',row('Jordan','Medina','Tafolla','Calle Lerdo de Tejada #190, Veracruz','7469291342','7405954207','zs19022223@estudiantes.uv.mx','2004-06-26')),
('zs19002900',row('Alan Emmanuel','Medina','Zarate','Av. Díaz Mirón #990, Boca del Río','3049311757','2132682173','zs19002900@estudiantes.uv.mx','1996-02-17')),
('zs18001427',row('Oscar','Mota','Garcia','Calle Juárez #14, Veracruz','2043702012','9717261946','zs18001427@estudiantes.uv.mx','2000-08-22')),
('zs19022228',row('Daniel de Jesus','Murguia','Pavan','Av. Camino Real #1000, Boca del Río','2624925134','9758934893','zs19022228@estudiantes.uv.mx','2001-03-07')),
('zs19002923',row('Esser Jaciel','Perez','Blanquero','Calle Serdán #86, Veracruz','2327458022','8957194508','zs19002923@estudiantes.uv.mx','1997-09-15')),
('zs19002895',row('Gabriel','Romero','Ambrosio','Av. Veracruz #311, Boca del Río','3712294892','2312253038','zs19002895@estudiantes.uv.mx','2002-05-12')),
('zs19002887',row('Mauricio Eduardo','Rosette','Odriozola','Calle Xalapa #208, Veracruz','1399157238','8092849380','zs19002887@estudiantes.uv.mx','1995-05-08')),
('zs19002908',row('Dio Josue','Salazar','Medina','Av. Costa Verde #158, Boca del Río','6371535178','7725831020','zs19002908@estudiantes.uv.mx','2003-01-14')),
('zs19002948',row('Kevin','Salgado','Gomez','Calle Clavijero #72, Veracruz','4066389709','3099761404','zs19002948@estudiantes.uv.mx','1998-11-24')),
('zs19002886',row('Alan Eduardo','Tapia','Vazquez','Av. Ignacio Zaragoza #110, Boca del Río','5221352237','1619953101','zs19002886@estudiantes.uv.mx','1996-12-18')),
('zs19002946',row('Pedro eliezer','Tiburcio','Uscanga','Calle Miguel Ángel de Quevedo #44, Veracruz','6408370438','7359269936','zs19002946@estudiantes.uv.mx','2001-06-11')),
('zs19022211',row('Jair de Jesus','Valdes','Palmero','Av. Playa Sol #231, Boca del Río','6883789357','1956550034','zs19022211@estudiantes.uv.mx','1999-01-22')),
('zs19024348',row('Carlos David','Velasco','Medrano','Calle Enríquez #14, Veracruz','2577570595','6758977258','zs19024348@estudiantes.uv.mx','1997-01-03')),
('zs20004605',row('Alberto','Caballero','Perez','Av. Vasconcelos #610, Boca del Río','7626132554','1191794564','zs20004605@estudiantes.uv.mx','2004-03-30')),
('zs19002910',row('Daniel Guillermo','Camacho','vergara','Calle Hernán Cortés #120, Veracruz','1538106084','1728254943','zs19002910@estudiantes.uv.mx','1995-08-05')),
('zs21020214',row('Isabella','Coria','Juarez','Av. Las Américas #225, Boca del Río','1781628973','3102697963','zs21020214@estudiantes.uv.mx','2000-10-07')),
('zs20004618',row('Alejandro','Escalona','Gonzalez','Calle Moctezuma #65, Veracruz','1641063073','8256328915','zs20004618@estudiantes.uv.mx','2002-02-13')),
('zs20020053',row('Gregorio de Jesus','Figueroa','Jacome','Av. Ejército Mexicano #545, Boca del Río','3678443900','2415859590','zs20020053@estudiantes.uv.mx','1996-05-19')),
('zs20020057',row('Rafael','Hernandez','Preza','Calle Allende #92, Veracruz','6872218005','3379643726','zs20020057@estudiantes.uv.mx','1999-07-24')),
('zs20004609',row('Consuelo','Jimenez','Martinez','Av. Mocambo #197, Boca del Río','6538850914','6353685995','zs20004609@estudiantes.uv.mx','2003-09-19')),
('zs19022207',row('Roberto','Lagunes','Alvarez','Calle Vicente Guerrero #58, Veracruz','1523003893','8585783077','zs19022207@estudiantes.uv.mx','1998-05-31')),
('zs20004624',row('Cynthia Aidee','Marini','Alvarez','Av. Salvador Díaz Mirón #316, Boca del Río','4105373883','5784893345','zs20004624@estudiantes.uv.mx','2001-10-11')),
('zs19024349',row('Karla Ofelia','Mariscal','Francisco','Calle Galeana #73, Veracruz','6805081644','3305232735','zs19024349@estudiantes.uv.mx','1997-12-08')),
('zs19024176',row('Eduardo','Marquez','Hernandez','Av. Ruiz Cortines #1780, Boca del Río','6367760505','6066247430','zs19024176@estudiantes.uv.mx','1996-01-29')),
('zs21002400',row('Geraldine','Redmond','Rodriguez','Calle Rayón #101, Veracruz','9654838758','9159320600','zs21002400@estudiantes.uv.mx','2004-05-07')),
('zs20020056',row('Abel Jose','Robles','Zuniga','Av. Las Palmas #148, Boca del Río','6101860779','8086971966','zs20020056@estudiantes.uv.mx','1995-10-02')),
('zs20004650',row('Christian Guillermo','Rosas','Hernandez','Calle Ignacio Allende #47, Veracruz','5397467211','2645172210','zs20004650@estudiantes.uv.mx','1999-03-17')),
('zs18027346',row('Rafael Alexis','Vargas','Heredia','Av. Playa Linda #385, Boca del Río','6951783298','1705067336','zs18027346@estudiantes.uv.mx','2002-08-30')),
('zs20021298',row('Carlos Rodolfo','Zamudio','Barran','Calle Juan de Dios Peza #54, Veracruz','3944780356','6092180683','zs20021298@estudiantes.uv.mx','2000-04-20')),
('zs19024352',row('Ivann Alexis','Aguilar','Contreras','Av. Ejército Nacional #702, Boca del Río','5898691363','3296617119','zs19024352@estudiantes.uv.mx','1998-09-27')),
('zs19002901',row('Jose Alberto','Bazan','Molina','Calle Simón Bolívar #128, Veracruz','3239465930','6655926304','zs19002901@estudiantes.uv.mx','1996-08-13')),
('zs19002919',row('Maria Paula','Betancourt','Mota','Av. Andrés García Lavín #1415, Veracruz','6203614315','2331095943','zs19002919@estudiantes.uv.mx','2001-01-23')),
('zs19002915',row('Jose de Jesus','Callejas','Rivera','Calle Enríquez #73, Veracruz','1727173603','7324408895','zs19002915@estudiantes.uv.mx','1997-06-09'));

-- Modificaciones
ALTER TABLE alumnos ADD COLUMN edad INT;
UPDATE alumnos SET edad = (DATE_PART('year', AGE((datoalu).fech_nac)));

INSERT INTO salones VALUES
(1,'B-21',37),
(2,'B-22',37),
(3,'B-23',37),
(4,'B-24',37),
(5,'B-25',37),
(6,'B-26',37),
(7,'F-22',42),
(8,'F-23',40),
(9,'F-24',41),
(10,'F-25',42),
(11,'F-26',38),
(12,'I-11',40),
(13,'I-12',34),
(14,'I-13',30),
(15,'I-14',32),
(16,'P-01',35),
(17,'P-02',35),
(18,'P-03',37),
(19,'P-04',35),
(20,'P-05',30);

INSERT INTO cursoAlumno VALUES
('zs19002949',1,9,1),
('zs19002949',5,8,2),
('zs19002949',8,10,1),
('zs19002949',9,8,2),
('zs19002949',11,9,1),
('zs19002939',1,10,1),
('zs19002939',20,9,1),
('zs19002939',3,9,1),
('zs19002939',10,9,2),
('zs19002904',1,7,1),
('zs19002904',5,7,1),
('zs19002904',10,8,1),
('zs19022223',5,8,1),
('zs19022223',1,8,1),
('zs19002908',1,8,1),
('zs19002908',3,10,1),
('zs19002908',8,7,1),
('zs19024349',3,8,1),
('zs19024349',5,8,2),
('zs19024349',8,7,1);

INSERT INTO cursoSalon VALUES
(1,13,'LUNES-MARTES-MIERCOLES-JUEVES'),
(2,7,'LUNES-MARTES-MIERCOLES-JUEVES-VIERNES'),
(3,2,'LUNES-MARTES-MIERCOLES-JUEVES'),
(4,13,'LUNES-MARTES-MIERCOLES-JUEVES-VIERNES'),
(5,1,'LUNES-MARTES-MIERCOLES-JUEVES-VIERNES'),
(6,8,'LUNES-MARTES-MIERCOLES-JUEVES-VIERNES'),
(7,1,'LUNES-MARTES-MIERCOLES-JUEVES-VIERNES'),
(8,12,'LUNES-MARTES-MIERCOLES-JUEVES'),
(9,10,'LUNES-MARTES-MIERCOLES-JUEVES-VIERNES'),
(10,15,'LUNES-MARTES-MIERCOLES-JUEVES-VIERNES'),
(11,1,'LUNES-MARTES-MIERCOLES-JUEVES'),
(12,7,'LUNES-MARTES-MIERCOLES-JUEVES-VIERNES'),
(13,14,'LUNES-MARTES-MIERCOLES-JUEVES-VIERNES'),
(14,11,'LUNES-MARTES-MIERCOLES-JUEVES-VIERNES'),
(15,2,'LUNES-MARTES-MIERCOLES-JUEVES'),
(16,8,'LUNES-MARTES-MIERCOLES-JUEVES-VIERNES'),
(17,9,'LUNES-MARTES-MIERCOLES-JUEVES-VIERNES'),
(18,8,'LUNES-MARTES-MIERCOLES-JUEVES-VIERNES'),
(19,1,'LUNES-MARTES-MIERCOLES-JUEVES'),
(20,12,'LUNES-MARTES-MIERCOLES-JUEVES');