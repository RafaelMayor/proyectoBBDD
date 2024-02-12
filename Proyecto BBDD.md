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

| LibroId | Nombre | Género | Biblioteca |
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

| CursoId | ProgramaAcademicoId | ProfesorId |
|---|---|---|
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

__Programas_académicos__

ProgramaAcademicoId | Nombre | Departamento | Empleado Administrativo |
|---|---|---|---|
| 1 | Programa académico 1 | Departamento 1 | Empleado Administrativo 1 |
| 2 | Programa académico 2 | Departamento 2 | Empleado Administrativo 2 |

__Programas_Estudiantes__

| ProgramaAcademicoId | DNI_Estudiante |
|---|---|
| 1 | 12345678A |
| 2 | 77777777T |
| 1 | 87654321A |
| 1 | 55555555S |
| 2 | 55555555S |


## Creación e inserción de tablas BBDD sqlite3

## CREATE TABLE

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


INSERT INTO Estudiantes (DNI, Nombre, Apellidos, Email, DirecciónPostalId, TutorId) VALUES
  ('12345678A', 'Abdul', 'Rashid', 'abdulrashid@gmail.com', 1, 1),
  ('77777777T', 'Mohammed', 'Ali', 'mohammedali@gmail.com', 2, 2),
  ('87654321A', 'Mahmoud', 'Bahkahr', 'mahmoudbahkahr@gmail.com', 3, 3),
  ('55555555S', 'Ahmet', 'Walid', 'ahmetwalid@gmail.com', 4, 4);
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

INSERT INTO Dirección_Postal_Estudiante (DirecciónPostalId, Calle, Número, Piso, Código Postal, Municipio, Provincia) VALUES
  (1, 'Calle Hermoso', 55, 3, 99999, 'Alcalá de Henares', 'Madrid'),
  (2, 'Calle Pepe Alonso', 86, 5, 54321, 'Almonte', 'Huelva'),
  (3, 'Calle Bufala Petarda', 48, 2, 88888, 'Cartagena', 'Murcia'),
  (4, 'Calle Federico García', 45, 9, 11111, 'Pepino', 'Toledo');
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
```


</div>
