<div align="justify";>

# Proyecto de BBDD de 1 DAW

## Índice
- [Modelo Entidad Relación](/modelo-er/)
- [Modelo Relacional](/modelo-relacional/)

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
|---|---|---|---|---|
| 12345678Z | Abdul | Rashid | abdulrashid@gmail.com | 1 | 1 |
| 77777777B | Mohammed | Ali | mohammedali@gmail.com | 2 | 2 |
| 87654321X | Mahmoud | Bahkahr | mahmoudbahkahr@gmail.com | 3 | 3 |
| 55555555K | Ahmet | Walid | ahmetwalid@gmail.com | 4 | 4 |

__Dirección_Postal_Estudiante__

|  DirecciónPostalId | Calle | Número | Piso | Código Postal | Municipio | Provincia |
|---|---|---|---|---|---|---|
| 1 | Calle Hermoso | 55 | 3 | 99999 | Alcalá de Henares | Madrid |
| 2 | Calle Penerdo Alonso | 86 | 5 | 54321 | Almonte | Huelva |
| 3 | Calle Bufala Petarda | 69 | 2 | 88888 | Seno | Teruel |
| 4 | Calle Federico García | 45 | 9 | 11111 | Pepino | Toledo |

__Profesores__

| id_profesor | DNI | Nombre | Apellidos |
|---|---|---|---|
| 1 | 89436578L | Mahamout | Mahanumahala |
| 2 | 23095687P | Felipinho | Piriquito |
| 3 | 69777769X | Concha | Mandinga |
| 4 | 70145744K | Barramout | Altramushí |

__Profesor_Estudiantes__

| id_profesor | DNI_Alumno |
|---|---|
| 1 | 12345678Z |
| 1 | 77777777B |
| 2 | 12345678Z |
| 2 | 77777777B |
| 3 | 87654321X |
| 3 | 55555555K |
| 4 | 87654321X |
| 4 | 55555555K |



</div>
