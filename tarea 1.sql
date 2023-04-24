Create database Tareas
go
use Tareas
go
--Crear tablas
create Table Periodo(
	fcIDPeriodo varchar(50) not null,
	fiHora int not null,
	Primary Key(fcIDPeriodo)
);

create Table ClaseDia(
	fcIDClase varchar(50) not null,
	fcDia varchar(50) not null,
	Primary Key(fcIDClase)
);

create Table Horario(
	fcIDHorario varchar(50) not null,
	fcHorario varchar(50) not null,
	Primary Key(fcIDHorario)
);

create Table GrupoEnergia(
	fiIDGrupoEnergia int not null,
	Nombre varchar(50) not null,
	fcIDPeriodo varchar(50) not null,
	fcIDClase varchar(50) not null,
	fcIDHorario varchar(50) not null,
	Primary Key(fiIDGrupoEnergia),
	Foreign Key(fcIDPeriodo) References Periodo(fcIDPeriodo),
	Foreign Key(fcIDClase) References ClaseDia(fcIDClase),
	Foreign Key(fcIDHorario) References Horario(fcIDHorario)
);

--Insertar Campos
Insert into Periodo values
  ('Punta Laborable', 10),
  ('Intermedio Laborable', 9),
  ('Valle Laborable', 5),
  ('Punta Sabado', 2),
  ('Intermedio Sabado', 16),
  ('Valle Sabado', 6),
  ('Punta Domingo', 0),
  ('Intermedio Dodmingo', 8),
  ('Valle Domingo', 16);

Insert into ClaseDia values
  ('1', 'Laborable'),
  ('2', 'Sabado'),
  ('3', 'Domingo-Feriado');

Insert into Horario values
  ('Punta Laborable1', '10 a 16'),
  ('Punta Laborable2', '18 a 22'),
  ('Intermedio Laborable1', '5 a 10'),
  ('Intermedio Laborable2', '16 a 18'),
  ('Intermedio Laborable3', '22 a 24'),
  ('Valle Laborable1', '0 a 5'),
  ('Punta Sabado1', '12 a 13'),
  ('Punta Sabado2', '19 a 20'),
  ('Intermedio Sabado1', '6 a 12'),
  ('Intermedio Sabado2', '13 a 19'),
  ('Intermedio Sabado3', '20 a 24'),
  ('Valle Sabado1', '0 a 6'),
  ('Intermedio Dodmingo1', '11 a 13'),
  ('Intermedio Dodmingo2', '17 a 23'),
  ('Valle Domingo1', '0 a 11'),
  ('Valle Domingo2', '13 a 17'),
  ('Valle Domingo3', '23 a 24');

  Insert into GrupoEnergia values
  (1, '1FN', 'Punta Laborable', '1', 'Punta Laborable1'),
  (2, '2FN',  'Intermedio Sabado', '2', 'Intermedio Sabado3'),
  (3, '3FN', 'Valle Domingo', '1', 'Valle Domingo1');

  select* from GrupoEnergia