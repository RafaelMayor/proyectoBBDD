<div align="justify";>

# Proyecto de BBDD de 1 DAW

## Índice
- [Modelo Entidad Relación](/modelo-er/)
- [Modelo Relacional](/modelo-relacional/)
- Normalización
- Creación e inserción de tablas BBDD sqlite3

## Autores

- [Francisco Javier Isaac Peña](https://github.com/Dhokthor369)
- [Rafael Martín Mayor](https://github.com/RafaelMayor)
- Carlos Javier Batista Barroso

## Modelo Entidad Relación

![](/modelo-er/Modelo%20ER.drawio.png)

## Modelo Relacional

![](/modelo-relacional/modelo-relacional.drawio.png)

## Normalización

__Estudiantes__

| DNI | Nombre | Apellidos | Email | DirecciónPostalId | TutorId |
|---|---|---|---|---|---|
| 12345678A | Abdul | Rashid | abdulrashid@gmail.com | 1 | 1 |
| 77777777T | Mohammed | Ali | mohammedali@gmail.com | 2 | 2 |
| 87654321A | Mahmoud | Bahkahr | mahmoudbahkahr@gmail.com | 3 | 3 |
| 55555555S | Ahmet | Walid | ahmetwalid@gmail.com | 4 | 4 |

__Dirección_Postal_Estudiante__

|  DirecciónPostalId | Calle | Número | Piso | Código Postal | Municipio | Provincia |
|---|---|---|---|---|---|---|
| 1 | Calle Hermoso | 55 | 3 | 99999 | Alcalá de Henares | Madrid |
| 2 | Calle Pepe Alonso | 86 | 5 | 54321 | Almonte | Huelva |
| 3 | Calle Bufala Petarda | 48 | 2 | 88888 | Cartagena | Murcia |
| 4 | Calle Federico García | 45 | 9 | 11111 | Pepino | Toledo |

__Profesores__

| id_profesor | DNI | Nombre | Apellidos |
|---|---|---|---|
| 1 | 89436578L | Mahamout | Mahanumahala |
| 2 | 23095687P | Manolo | Piriquito |
| 3 | 90909090X | Begoña | Gustavo |
| 4 | 70145744K | Barramout | Altramushí |

__Profesor_Estudiantes__

| id_profesor | DNI_Estudiante |
|---|---|
| 1 | 12345678A |
| 2 | 77777777T |
| 3 | 87654321A |
| 1 | 55555555S |
| 2 | 55555555S |
| 3 | 55555555S |
| 4 | 55555555S |

__Libros__

| LibroId | Nombre | Genero | Biblioteca |
|---|---|---|---|
| 1 | Amor y balas | Acción | Biblioteca La Esperanza |
| 2 | 50 años | Drama | Biblioteca UniversoLibro |
| 3 | El fugitivo de Londres | Suspense | Biblioteca Planeta Libro  |
| 4 | La niña vestida de blanco | Terror | Biblioteca Pedroche |

__Libros_Estudiantes__

| LibroId | DNI_Estudiante |
|---|---|
| 1 | 12345678A |
| 2 | 77777777T |
| 3 | 87654321A |
| 4 | 55555555S |

__Empresas asociadas__

| EmpresaId | Nombre | Evento | Instalación deportiva |
|---|---|---|---|
| 1 | Empresa 1 | Evento 1 | Instalación 1 |
| 2 | Empresa 2 | Evento 2 | Instalación 2 |
| 3 | Empresa 3 | Evento 3 | Instalación 3 |
| 4 | Empresa 4 | Evento 4 | Instalación 4 |

__Becas__

| EmpresaId | BecaId | Nombre | Cantidad |
|---|---|---|---|
| 1 | 1 | Beca 1 | 1000€ |
| 2 | 2 | Beca 2 | 500€ |
| 3 | 3 | Beca 3 | 750€ |
| 4 | 4 | Beca 4 | 2000€ |

__Becas_Estudiantes__

| BecaId | DNI_Estudiante|
|---|---|
| 1 | 12345678A |
| 2 | 12345678A |
| 2 | 77777777T |
| 3 | 87654321A |
| 4 | 55555555S |

__Asignaturas__

| AsignaturaId | Nombre | Prerequisitos |
|---|---|---|
| 1 | Asignatura 1 | Prerequisitos 1 |
| 2 | Asignatura 2 | Prerequisitos 2 |
| 3 | Asignatura 3 | Prerequisitos 3 |
| 4 | Asignatura 4 | Prerequisitos 4 |

__Curso_Asignaturas__

| AsignaturaId | CursoId |
|---|---|
| 1 | 1 |
| 2 | 2 |
| 3 | 3 |
| 4 | 4 |

__Notas_Estudiantes__

| AsignaturaId | DNI_Estudiante | Notas |
|---|---|---|
| 1 | 12345678A | 10 |
| 2 | 77777777T | 8 |
| 3 | 87654321A | 7 |
| 1 | 55555555S | 10 |
| 2 | 55555555S | 10 |
| 3 | 55555555S | 10 |
| 4 | 55555555S | 10 |

__Cursos_Estudiantes__

| CursoId | DNI_Estudiante |
|---|---|
| 1 | 12345678A |
| 2 | 77777777T |
| 3 | 87654321A |
| 1 | 55555555S |
| 2 | 55555555S |
| 3 | 55555555S |
| 4 | 55555555S |

__Cursos__

| CursoId | Nombre | ProgramaAcademicoId | ProfesorId |
|---|---|---|---|
| 1 | 1 | Curso 1 | 1 |
| 2 | 2 | Curso 2 | 2 |
| 3 | 1 | Curso 3 | 3 |
| 4 | 2 | Curso 4 | 4 |

__Aulas__

| AulaId | Nombre |
|---|---|
| 1 | Aula 103 |
| 2 | Aula 104 |
| 3 | Aula 116 |
| 4 | Aula 114 |

__Aulas_Cursos__

| CursoId | AulaId |
|---|---|
| 1 | 1 |
| 2 | 2 |
| 3 | 3 |
| 4 | 3 |
| 4 | 4 |

__Programas_academicos__

ProgramaAcademicoId | Nombre | Departamento | Empleado_Administrativo |
|---|---|---|---|
| 1 | Programa academico 1 | Departamento 1 | Empleado Administrativo 1 |
| 2 | Programa academico 2 | Departamento 2 | Empleado Administrativo 2 |

__Programas_Estudiantes__

| ProgramaAcademicoId | DNI_Estudiante |
|---|---|
| 1 | 12345678A |
| 2 | 77777777T |
| 1 | 87654321A |
| 1 | 55555555S |
| 2 | 55555555S |


## Creación e inserción de tablas BBDD sqlite3

**Estudiantes:**

```sql
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


INSERT INTO Estudiantes (DNI, Nombre, Apellidos, Email, DireccionPostalId, TutorId) VALUES
  ('12345678A', 'Abdul', 'Rashid', 'abdulrashid@gmail.com', 1, 1),
  ('77777777T', 'Mohammed', 'Ali', 'mohammedali@gmail.com', 2, 2),
  ('87654321A', 'Mahmoud', 'Bahkahr', 'mahmoudbahkahr@gmail.com', 3, 3),
  ('55555555S', 'Ahmet', 'Walid', 'ahmetwalid@gmail.com', 4, 4);

select * from Estudiantes;
┌───────────┬──────────┬───────────┬──────────────────────────┬───────────────────┬─────────┐
│    DNI    │  Nombre  │ Apellidos │          Email           │ DireccionPostalId │ TutorId │
├───────────┼──────────┼───────────┼──────────────────────────┼───────────────────┼─────────┤
│ 12345678A │ Abdul    │ Rashid    │ abdulrashid@gmail.com    │ 1                 │ 1       │
│ 77777777T │ Mohammed │ Ali       │ mohammedali@gmail.com    │ 2                 │ 2       │
│ 87654321A │ Mahmoud  │ Bahkahr   │ mahmoudbahkahr@gmail.com │ 3                 │ 3       │
│ 55555555S │ Ahmet    │ Walid     │ ahmetwalid@gmail.com     │ 4                 │ 4       │
└───────────┴──────────┴───────────┴──────────────────────────┴───────────────────┴─────────┘
```


**Dirección_Postal_Estudiante:**

```sql
CREATE TABLE Direccion_Postal_Estudiante (
  DireccionPostalId INTEGER PRIMARY KEY,
  Calle TEXT,
  Numero INTEGER,
  Piso INTEGER,
  CodigoPostal INTEGER,
  Municipio TEXT,
  Provincia TEXT
);

INSERT INTO Direccion_Postal_Estudiante (DireccionPostalId, Calle, Numero, Piso, CodigoPostal, Municipio, Provincia) VALUES
  (1, 'Calle Hermoso', 55, 3, 99999, 'Alcalá de Henares', 'Madrid'),
  (2, 'Calle Pepe Alonso', 86, 5, 54321, 'Almonte', 'Huelva'),
  (3, 'Calle Bufala Petarda', 48, 2, 88888, 'Cartagena', 'Murcia'),
  (4, 'Calle Federico García', 45, 9, 11111, 'Pepino', 'Toledo');

select * from Direccion_Postal_Estudiante ;
┌───────────────────┬───────────────────────┬────────┬──────┬──────────────┬───────────────────┬───────────┐
│ DireccionPostalId │         Calle         │ Numero │ Piso │ CodigoPostal │     Municipio     │ Provincia │
├───────────────────┼───────────────────────┼────────┼──────┼──────────────┼───────────────────┼───────────┤
│ 1                 │ Calle Hermoso         │ 55     │ 3    │ 99999        │ Alcalá de Henares │ Madrid    │
│ 2                 │ Calle Pepe Alonso     │ 86     │ 5    │ 54321        │ Almonte           │ Huelva    │
│ 3                 │ Calle Bufala Petarda  │ 48     │ 2    │ 88888        │ Cartagena         │ Murcia    │
│ 4                 │ Calle Federico García │ 45     │ 9    │ 11111        │ Pepino            │ Toledo    │
└───────────────────┴───────────────────────┴────────┴──────┴──────────────┴───────────────────┴───────────┘
```


**Profesores:**

```sql
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

select * from Profesores ;
┌─────────────┬───────────┬───────────┬──────────────┐
│ id_profesor │    DNI    │  Nombre   │  Apellidos   │
├─────────────┼───────────┼───────────┼──────────────┤
│ 1           │ 89436578L │ Mahamout  │ Mahanumahala │
│ 2           │ 23095687P │ Manolo    │ Piriquito    │
│ 3           │ 90909090X │ Begoña    │ Gustavo      │
│ 4           │ 70145744K │ Barramout │ Altramushí   │
└─────────────┴───────────┴───────────┴──────────────┘
```

**Profesor_Estudiantes:**

```sql
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

select * from Profesor_Estudiantes ;
┌─────────────┬────────────────┐
│ id_profesor │ DNI_Estudiante │
├─────────────┼────────────────┤
│ 1           │ 12345678A      │
│ 2           │ 77777777T      │
│ 3           │ 87654321A      │
│ 1           │ 55555555S      │
│ 2           │ 55555555S      │
│ 3           │ 55555555S      │
│ 4           │ 55555555S      │
└─────────────┴────────────────┘
```

**Libros:**

```sql
CREATE TABLE Libros (
  LibroId INTEGER PRIMARY KEY,
  Nombre TEXT,
  Genero TEXT,
  Biblioteca TEXT
);

INSERT INTO Libros (LibroId, Nombre, Genero, Biblioteca) VALUES
(1, 'Amor y balas', 'Acción', 'Biblioteca La Esperanza'),
(2, '50 años', 'Drama', 'Biblioteca UniversoLibro'),
(3, 'El fugitivo de Londres', 'Suspense', 'Biblioteca Planeta Libro'),
(4, 'La niña vestida de blanco', 'Terror', 'Biblioteca Pedroche');

select * from Libros ;
┌─────────┬───────────────────────────┬──────────┬──────────────────────────┐
│ LibroId │          Nombre           │  Genero  │        Biblioteca        │
├─────────┼───────────────────────────┼──────────┼──────────────────────────┤
│ 1       │ Amor y balas              │ Accion   │ Biblioteca La Esperanza  │
│ 2       │ 50 años                   │ Drama    │ Biblioteca UniversoLibro │
│ 3       │ El fugitivo de Londres    │ Suspense │ Biblioteca Planeta Libro │
│ 4       │ La niña vestida de blanco │ Terror   │ Biblioteca Pedroche      │
└─────────┴───────────────────────────┴──────────┴──────────────────────────┘
```

**Libros_Estudiantes:**

```sql
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

select * from Libros_Estudiantes ;
┌─────────┬────────────────┐
│ LibroId │ DNI_Estudiante │
├─────────┼────────────────┤
│ 1       │ 12345678A      │
│ 2       │ 77777777T      │
│ 3       │ 87654321A      │
│ 4       │ 55555555S      │
└─────────┴────────────────┘
```

**Empresas_asociadas:**

```sql
CREATE TABLE Empresas_asociadas (
  EmpresaId INTEGER PRIMARY KEY,
  Nombre TEXT,
  Evento TEXT,
  Instalacion_deportiva TEXT
);

INSERT INTO Empresas_asociadas (EmpresaId, Nombre, Evento, Instalacion_deportiva) VALUES
(1, 'Empresa 1', 'Evento 1', 'Instalación 1'),
(2, 'Empresa 2', 'Evento 2', 'Instalación 2'),
(3, 'Empresa 3', 'Evento 3', 'Instalación 3'),
(4, 'Empresa 4', 'Evento 4', 'Instalación 4');

select * from Empresas_asociadas ;
┌───────────┬───────────┬──────────┬───────────────────────┐
│ EmpresaId │  Nombre   │  Evento  │ Instalacion_deportiva │
├───────────┼───────────┼──────────┼───────────────────────┤
│ 1         │ Empresa 1 │ Evento 1 │ Instalacion 1         │
│ 2         │ Empresa 2 │ Evento 2 │ Instalacion 2         │
│ 3         │ Empresa 3 │ Evento 3 │ Instalacion 3         │
│ 4         │ Empresa 4 │ Evento 4 │ Instalacion 4         │
└───────────┴───────────┴──────────┴───────────────────────┘
```

**Becas:**

```sql
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

select * from Becas ;
┌───────────┬────────┬────────┬──────────┐
│ EmpresaId │ BecaId │ Nombre │ Cantidad │
├───────────┼────────┼────────┼──────────┤
│ 1         │ 1      │ Beca 1 │ 1000     │
│ 2         │ 2      │ Beca 2 │ 500      │
│ 3         │ 3      │ Beca 3 │ 750      │
│ 4         │ 4      │ Beca 4 │ 2000     │
└───────────┴────────┴────────┴──────────┘
```

**Becas_Estudiantes:**

```sql
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

select * from Becas_Estudiantes ;
┌────────┬────────────────┐
│ BecaId │ DNI_Estudiante │
├────────┼────────────────┤
│ 1      │ 12345678A      │
│ 2      │ 12345678A      │
│ 2      │ 77777777T      │
│ 3      │ 87654321A      │
│ 4      │ 55555555S      │
└────────┴────────────────┘
```

**Asignaturas:**

```sql
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

select * from Asignaturas ;
┌──────────────┬──────────────┬─────────────────┐
│ AsignaturaId │    Nombre    │  Prerequisitos  │
├──────────────┼──────────────┼─────────────────┤
│ 1            │ Asignatura 1 │ Prerequisitos 1 │
│ 2            │ Asignatura 2 │ Prerequisitos 2 │
│ 3            │ Asignatura 3 │ Prerequisitos 3 │
│ 4            │ Asignatura 4 │ Prerequisitos 4 │
└──────────────┴──────────────┴─────────────────┘
```

**Curso_Asignaturas:**

```sql
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

select * from Curso_Asignaturas ;
┌──────────────┬─────────┐
│ AsignaturaId │ CursoId │
├──────────────┼─────────┤
│ 1            │ 1       │
│ 2            │ 2       │
│ 3            │ 3       │
│ 4            │ 4       │
└──────────────┴─────────┘
```

**Notas_Estudiantes:**

```sql
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

select * from Notas_Estudiantes ;
┌──────────────┬────────────────┬───────┐
│ AsignaturaId │ DNI_Estudiante │ Notas │
├──────────────┼────────────────┼───────┤
│ 1            │ 12345678A      │ 10    │
│ 2            │ 77777777T      │ 8     │
│ 3            │ 87654321A      │ 7     │
│ 1            │ 55555555S      │ 10    │
│ 2            │ 55555555S      │ 10    │
│ 3            │ 55555555S      │ 10    │
│ 4            │ 55555555S      │ 10    │
└──────────────┴────────────────┴───────┘
```

**Cursos_Estudiantes:**

```sql
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

select * from Cursos_Estudiantes ;
┌─────────┬────────────────┐
│ CursoId │ DNI_Estudiante │
├─────────┼────────────────┤
│ 1       │ 12345678A      │
│ 2       │ 77777777T      │
│ 3       │ 87654321A      │
│ 1       │ 55555555S      │
│ 2       │ 55555555S      │
│ 3       │ 55555555S      │
│ 4       │ 55555555S      │
└─────────┴────────────────┘
```

**Cursos:**

```sql
CREATE TABLE Cursos (
  CursoId INTEGER PRIMARY KEY,
  ProgramaAcademicoId INTEGER,
  Nombre TEXT,
  ProfesorId INTEGER,
  FOREIGN KEY (ProgramaAcademicoId) REFERENCES Programas_academicos(ProgramaAcademicoId),
  FOREIGN KEY (ProfesorId) REFERENCES Profesores(ProfesorId)
);

INSERT INTO Cursos (CursoId, ProgramaAcademicoId, Nombre, ProfesorId) VALUES
(1, 1, 'Curso 1', 1),
(2, 2, 'Curso 2', 2),
(3, 1, 'Curso 3', 3),
(4, 2, 'Curso 4', 4);

select * from Cursos ;
┌─────────┬─────────────────────┬─────────┬────────────┐
│ CursoId │ ProgramaAcademicoId │ Nombre  │ ProfesorId │
├─────────┼─────────────────────┼─────────┼────────────┤
│ 1       │ 1                   │ Curso 1 │ 1          │
│ 2       │ 2                   │ Curso 2 │ 2          │
│ 3       │ 1                   │ Curso 3 │ 3          │
│ 4       │ 2                   │ Curso 4 │ 4          │
└─────────┴─────────────────────┴─────────┴────────────┘
```

**Aulas:**

```sql
CREATE TABLE Aulas (
  AulaId INTEGER PRIMARY KEY,
  Nombre TEXT
);

INSERT INTO Aulas (AulaId, Nombre) VALUES
(1, 'Aula 103'),
(2, 'Aula 104'),
(3, 'Aula 116'),
(4, 'Aula 114');

select * from Aulas ;
┌────────┬──────────┐
│ AulaId │  Nombre  │
├────────┼──────────┤
│ 1      │ Aula 103 │
│ 2      │ Aula 104 │
│ 3      │ Aula 116 │
│ 4      │ Aula 114 │
└────────┴──────────┘
```

**Aulas_Cursos:**

```sql
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

select * from Aulas_Cursos ;
┌─────────┬────────┐
│ CursoId │ AulaId │
├─────────┼────────┤
│ 1       │ 1      │
│ 2       │ 2      │
│ 3       │ 3      │
│ 4       │ 3      │
│ 4       │ 4      │
└─────────┴────────┘
```

**Programas_academicos:**

```sql
CREATE TABLE Programas_academicos (
  ProgramaAcademicoId INTEGER PRIMARY KEY,
  Nombre TEXT,
  Departamento TEXT,
  Empleado_administrativo TEXT
);

INSERT INTO Programas_academicos (ProgramaAcademicoId, Nombre, Departamento, Empleado_Administrativo) VALUES
(1, 'Programa academico 1', 'Departamento 1', 'Empleado Administrativo 1'),
(2, 'Programa academico 2', 'Departamento 2', 'Empleado Administrativo 2');

select * from Programas_academicos ;
┌─────────────────────┬──────────────────────┬────────────────┬───────────────────────────┐
│ ProgramaAcademicoId │        Nombre        │  Departamento  │  Empleado_administrativo  │
├─────────────────────┼──────────────────────┼────────────────┼───────────────────────────┤
│ 1                   │ Programa academico 1 │ Departamento 1 │ Empleado Administrativo 1 │
│ 2                   │ Programa academico 2 │ Departamento 2 │ Empleado Administrativo 2 │
└─────────────────────┴──────────────────────┴────────────────┴───────────────────────────┘
```

**Programas_Estudiantes:**

```sql
CREATE TABLE Programas_Estudiantes (
  ProgramaAcademicoId INTEGER,
  DNI_Estudiante TEXT,
  FOREIGN KEY (ProgramaAcademicoId) REFERENCES Programas_academicos(ProgramaAcademicoId),
  FOREIGN KEY (DNI_Estudiante) REFERENCES Estudiantes(DNI_Estudiante)
);

INSERT INTO Programas_Estudiantes (ProgramaAcademicoId, DNI_Estudiante) VALUES
(1, '12345678A'),
(2, '77777777T'),
(1, '87654321A'),
(1, '55555555S'),
(2, '55555555S');

select * from Programas_Estudiantes ;
┌─────────────────────┬────────────────┐
│ ProgramaAcademicoId │ DNI_Estudiante │
├─────────────────────┼────────────────┤
│ 1                   │ 12345678A      │
│ 2                   │ 77777777T      │
│ 1                   │ 87654321A      │
│ 1                   │ 55555555S      │
│ 2                   │ 55555555S      │
└─────────────────────┴────────────────┘
```





</div>
