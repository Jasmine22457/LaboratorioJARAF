create DATABASE LABORATORIO_CLINICO_JARAF2

USE LABORATORIO_CLINICO_JARAF2

CREATE TABLE USUARIO(
IdUsuario INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
Usuario VARCHAR (50) NOT NULL,
Contraseña VARCHAR (50) NOT NULL,
);

CREATE TABLE EXAMENES(
IdExamenes INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
NombreExamen  VARCHAR (50) NOT NULL,
Precio MONEY,
);

CREATE TABLE Paciente(
IdPaciente INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
Nombre VARCHAR (50) NOT NULL,
Apellido VARCHAR (50) NOT NULL,
Edad VARCHAR (50) NOT NULL,
Direccion  VARCHAR (100) NOT NULL,
telefono VARCHAR (100) NOT NULL,

);

CREATE TABLE CITAS(
IdCita INT PRIMARY KEY IDENTITY (1,1) NOT NULL, 
Fecha VARCHAR (50) NOT NULL,
Hora VARCHAR (50) NOT NULL,
IdExamenes INT FOREIGN KEY (IdExamenes) REFERENCES EXAMENES(IdExamenes) NOT NULL,
IdPaciente INT FOREIGN KEY (IdPaciente) REFERENCES Paciente(IdPaciente) NOT NULL,
);

insert into EXAMENES(NombreExamen,Precio) values ('Perfil Tiroideo',61.31);
insert into EXAMENES(NombreExamen,Precio) values ('Perfil Renal',53.00);
insert into EXAMENES(NombreExamen,Precio) values ('Perfil de Hierro',50.00);
insert into EXAMENES(NombreExamen,Precio) values ('Perfil Lipidos',39.90);
insert into EXAMENES(NombreExamen,Precio) values ('Perfil Diabetico',49.00);
insert into EXAMENES(NombreExamen,Precio) values ('Perfil Prenatal Completo',80.15);
insert into EXAMENES(NombreExamen,Precio) values ('Perfil Riesgo Cardiaco',115.00);
insert into EXAMENES(NombreExamen,Precio) values ('Cultivo de Vidrio Colera',25.90);
insert into EXAMENES(NombreExamen,Precio) values ('Cultivo de Hongo+Directo',25.90);
insert into EXAMENES(NombreExamen,Precio) values ('Cultivo de Heces',25.90);
insert into EXAMENES(NombreExamen,Precio) values ('Cultivo de Hongos-Esputo',25.90);
insert into EXAMENES(NombreExamen,Precio) values ('Cultivo y Antibiograma',25.90);
insert into EXAMENES(NombreExamen,Precio) values ('Cultivo de Orina+Recuenco de Bacteria',25.90);
insert into EXAMENES(NombreExamen,Precio) values ('Hemocultivo',25.90);
insert into EXAMENES(NombreExamen,Precio) values ('Retraccion de Coagulos',8.60);
insert into EXAMENES(NombreExamen,Precio) values ('Tiempo y Valor de Protrombina-INR',7.60);
insert into EXAMENES(NombreExamen,Precio) values ('Tiempo de Coagulacion',5.10);
insert into EXAMENES(NombreExamen,Precio) values ('Tiempo de Sangramiento',5.10);
insert into EXAMENES(NombreExamen,Precio) values ('Tiempo de Tromboplastina Parcial Activada-P',11.45);
insert into EXAMENES(NombreExamen,Precio) values ('Colesterol de Baja Densidad',18.90);
insert into EXAMENES(NombreExamen,Precio) values ('Amilasa en Sangre',15.00);
insert into EXAMENES(NombreExamen,Precio) values ('Cloro en Orina-24Hrs',16.00);
insert into EXAMENES(NombreExamen,Precio) values ('Creatin Fosfokinasa(CPK TOTAL)',21.33);
insert into EXAMENES(NombreExamen,Precio) values ('Calcio',8.50);
insert into EXAMENES(NombreExamen,Precio) values ('Acido Urico',7.90);


insert into USUARIO(Usuario,Contraseña) values ('Rocio','Jas');
insert into USUARIO(Usuario,Contraseña) values ('Adamaris','Yan');
insert into USUARIO(Usuario,Contraseña) values ('Jose','Fran');
insert into USUARIO(Usuario,Contraseña) values ('Franklin','Noe');
insert into USUARIO(Usuario,Contraseña) values ('Anderson','stan');


