CREATE TABLE Estudiantes (
  DNI TEXT PRIMARY KEY,
  Nombre TEXT,
  Apellidos TEXT,
  Email TEXT,
  DireccionPostalId INTEGER,
  TutorId INTEGER,
  FOREIGN KEY (DireccionPostalId) REFERENCES Direccion_Postal_Estudiante(DireccionPostalId),
  FOREIGN KEY (TutorId) REFERENCES Profesores(id_profesor)
);


INSERT INTO Estudiantes (DNI, Nombre, Apellidos, Email, DirecciónPostalId, TutorId) VALUES
  ('12345678A', 'Abdul', 'Rashid', 'abdulrashid@gmail.com', 1, 1),
  ('77777777T', 'Mohammed', 'Ali', 'mohammedali@gmail.com', 2, 2),
  ('87654321A', 'Mahmoud', 'Bahkahr', 'mahmoudbahkahr@gmail.com', 3, 3),
  ('55555555S', 'Ahmet', 'Walid', 'ahmetwalid@gmail.com', 4, 4);





CREATE TABLE Direccion_Postal_Estudiante (
  DireccionPostalId INTEGER PRIMARY KEY,
  Calle TEXT,
  Numero INTEGER,
  Piso INTEGER,
  CodigoPostal INTEGER,
  Municipio TEXT,
  Provincia TEXT
);

INSERT INTO Dirección_Postal_Estudiante (DirecciónPostalId, Calle, Número, Piso, Código Postal, Municipio, Provincia) VALUES
  (1, 'Calle Hermoso', 55, 3, 99999, 'Alcalá de Henares', 'Madrid'),
  (2, 'Calle Pepe Alonso', 86, 5, 54321, 'Almonte', 'Huelva'),
  (3, 'Calle Bufala Petarda', 48, 2, 88888, 'Cartagena', 'Murcia'),
  (4, 'Calle Federico García', 45, 9, 11111, 'Pepino', 'Toledo');





CREATE TABLE Profesores (
  id_profesor INTEGER PRIMARY KEY,
  DNI TEXT,
  Nombre TEXT,
  Apellidos TEXT
);

INSERT INTO Profesores (id_profesor, DNI, Nombre, Apellidos) VALUES
  (1, '89436578L', 'Mahamout', 'Mahanumahala'),
  (2, '23095687P', 'Manolo', 'Piriquito'),
  (3, '90909090X', 'Begoña', 'Gustavo'),
  (4, '70145744K', 'Barramout', 'Altramushí');





CREATE TABLE Profesor_Estudiantes (
  id_profesor INTEGER,
  DNI_Estudiante TEXT,
  FOREIGN KEY (id_profesor) REFERENCES Profesores(id_profesor),
  FOREIGN KEY (DNI_Estudiante) REFERENCES Estudiantes(DNI)
);

INSERT INTO Profesor_Estudiantes (id_profesor, DNI_Estudiante) VALUES
  (1, '12345678A'),
  (2, '77777777T'),
  (3, '87654321A'),
  (1, '55555555S'),
  (2, '55555555S'),
  (3, '55555555S'),
  (4, '55555555S');





CREATE TABLE Libros (
  LibroId INTEGER PRIMARY KEY,
  Nombre TEXT,
  Género TEXT,
  Biblioteca TEXT
);

INSERT INTO Libros (LibroId, Nombre, Género, Biblioteca) VALUES
(1, 'Amor y balas', 'Acción', 'Biblioteca La Esperanza'),
(2, '50 años', 'Drama', 'Biblioteca UniversoLibro'),
(3, 'El fugitivo de Londres', 'Suspense', 'Biblioteca Planeta Libro'),
(4, 'La niña vestida de blanco', 'Terror', 'Biblioteca Pedroche');





CREATE TABLE Libros_Estudiantes (
  LibroId INTEGER,
  DNI_Estudiante TEXT,
  FOREIGN KEY (LibroId) REFERENCES Libros(LibroId),
  FOREIGN KEY (DNI_Estudiante) REFERENCES Estudiantes(DNI_Estudiante)
);

INSERT INTO Libros_Estudiantes (LibroId, DNI_Estudiante) VALUES
(1, '12345678A'),
(2, '77777777T'),
(3, '87654321A'),
(4, '55555555S');





CREATE TABLE Empresas_asociadas (
  EmpresaId INTEGER PRIMARY KEY,
  Nombre TEXT,
  Evento TEXT,
  Instalación_deportiva TEXT
);

INSERT INTO Empresas_asociadas (EmpresaId, Nombre, Evento, Instalación_deportiva) VALUES
(1, 'Empresa 1', 'Evento 1', 'Instalación 1'),
(2, 'Empresa 2', 'Evento 2', 'Instalación 2'),
(3, 'Empresa 3', 'Evento 3', 'Instalación 3'),
(4, 'Empresa 4', 'Evento 4', 'Instalación 4');





CREATE TABLE Becas (
  EmpresaId INTEGER,
  BecaId INTEGER PRIMARY KEY,
  Nombre TEXT,
  Cantidad TEXT,
  FOREIGN KEY (EmpresaId) REFERENCES Empresas_asociadas(EmpresaId)
);

INSERT INTO Becas (EmpresaId, BecaId, Nombre, Cantidad) VALUES
(1, 1, 'Beca 1', 1000),
(2, 2, 'Beca 2', 500),
(3, 3, 'Beca 3', 750),
(4, 4, 'Beca 4', 2000);





CREATE TABLE Becas_Estudiantes (
  BecaId INTEGER,
  DNI_Estudiante TEXT,
  FOREIGN KEY (BecaId) REFERENCES Becas(BecaId),
  FOREIGN KEY (DNI_Estudiante) REFERENCES Estudiantes(DNI_Estudiante)
);

INSERT INTO Becas_Estudiantes (BecaId, DNI_Estudiante) VALUES
(1, '12345678A'),
(2, '12345678A'),
(2, '77777777T'),
(3, '87654321A'),
(4, '55555555S');





CREATE TABLE Asignaturas (
  AsignaturaId INTEGER PRIMARY KEY,
  Nombre TEXT,
  Prerequisitos TEXT
);

INSERT INTO Asignaturas (AsignaturaId, Nombre, Prerequisitos) VALUES
(1, 'Asignatura 1', 'Prerequisitos 1'),
(2, 'Asignatura 2', 'Prerequisitos 2'),
(3, 'Asignatura 3', 'Prerequisitos 3'),
(4, 'Asignatura 4', 'Prerequisitos 4');





CREATE TABLE Curso_Asignaturas (
  AsignaturaId INTEGER,
  CursoId INTEGER,
  FOREIGN KEY (AsignaturaId) REFERENCES Asignaturas(AsignaturaId),
  FOREIGN KEY (CursoId) REFERENCES Cursos(CursoId)
);

INSERT INTO Curso_Asignaturas (AsignaturaId, CursoId) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);





CREATE TABLE Notas_Estudiantes (
  AsignaturaId INTEGER,
  DNI_Estudiante TEXT,
  Notas INTEGER,
  FOREIGN KEY (AsignaturaId) REFERENCES Asignaturas(AsignaturaId),
  FOREIGN KEY (DNI_Estudiante) REFERENCES Estudiantes(DNI_Estudiante)
);

INSERT INTO Notas_Estudiantes (AsignaturaId, DNI_Estudiante, Notas) VALUES
(1, '12345678A', 10),
(2, '77777777T', 8),
(3, '87654321A', 7),
(1, '55555555S', 10),
(2, '55555555S', 10),
(3, '55555555S', 10),
(4, '55555555S', 10);





CREATE TABLE Cursos_Estudiantes (
  CursoId INTEGER,
  DNI_Estudiante TEXT,
  FOREIGN KEY (CursoId) REFERENCES Cursos(CursoId),
  FOREIGN KEY (DNI_Estudiante) REFERENCES Estudiantes(DNI_Estudiante)
);

INSERT INTO Cursos_Estudiantes (CursoId, DNI_Estudiante) VALUES
(1, '12345678A'),
(2, '77777777T'),
(3, '87654321A'),
(1, '55555555S'),
(2, '55555555S'),
(3, '55555555S'),
(4, '55555555S');





CREATE TABLE Cursos (
  CursoId INTEGER PRIMARY KEY,
  ProgramaAcademicoId INTEGER,
  Nombre TEXT,
  ProfesorId INTEGER,
  FOREIGN KEY (ProgramaAcademicoId) REFERENCES Programas_académicos(ProgramaAcademicoId),
  FOREIGN KEY (ProfesorId) REFERENCES Profesores(ProfesorId)
);

INSERT INTO Cursos (CursoId, ProgramaAcademicoId, ProfesorId) VALUES
(1, 1, 'Curso 1', 1),
(2, 2, 'Curso 2', 2),
(3, 1, 'Curso 3', 3),
(4, 2, 'Curso 4', 4);





CREATE TABLE Aulas (
  AulaId INTEGER PRIMARY KEY,
  Nombre TEXT
);

INSERT INTO Aulas (AulaId, Nombre) VALUES
(1, 'Aula 103'),
(2, 'Aula 104'),
(3, 'Aula 116'),
(4, 'Aula 114');





CREATE TABLE Aulas_Cursos (
  CursoId INTEGER,
  AulaId INTEGER,
  FOREIGN KEY (CursoId) REFERENCES Cursos(CursoId),
  FOREIGN KEY (AulaId) REFERENCES Aulas(AulaId)
);

INSERT INTO Aulas_Cursos (CursoId, AulaId) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 3),
(4, 4);





CREATE TABLE Programas_académicos (
  ProgramaAcademicoId INTEGER PRIMARY KEY,
  Nombre TEXT,
  Departamento TEXT,
  Empleado_administrativo TEXT
);

INSERT INTO Programas_académicos (ProgramaAcademicoId, Nombre, Departamento, Empleado_Administrativo) VALUES
(1, 'Programa académico 1', 'Departamento 1', 'Empleado Administrativo 1'),
(2, 'Programa académico 2', 'Departamento 2', 'Empleado Administrativo 2');





CREATE TABLE Programas_Estudiantes (
  ProgramaAcademicoId INTEGER,
  DNI_Estudiante TEXT,
  FOREIGN KEY (ProgramaAcademicoId) REFERENCES Programas_académicos(ProgramaAcademicoId),
  FOREIGN KEY (DNI_Estudiante) REFERENCES Estudiantes(DNI_Estudiante)
);

INSERT INTO Programas_Estudiantes (ProgramaAcademicoId, DNI_Estudiante) VALUES
(1, '12345678A'),
(2, '77777777T'),
(1, '87654321A'),
(1, '55555555S'),
(2, '55555555S');
