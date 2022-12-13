USE MASTER;
GO
IF DB_ID (N'Hospital') is not null
DROP DATABASE Hospital;
GO
CREATE DATABASE Hospital
ON
(NAME = Hospital_dat,
FILENAME = 'C:\BASES DE DATOS\Hospital\Hospital.mdf',
SIZE = 10,
MAXSIZE = 50,
FILEGROWTH = 5)
LOG ON
(NAME = Hospital_log,
FILENAME = 'C:\BASES DE DATOS\Hospital\Hospital.ldf',
SIZE = 5MB,
MAXSIZE = 25MB,
FILEGROWTH = 5MB);
GO
CREATE DATABASE Hospital
USE Hospital;
GO

--Tablas Base de datos Hospital --
--Almacen--
CREATE TABLE Almacen
(
IdAlmacen INT IDENTITY (1,1),
nombre VARCHAR(50) NOT NULL,
descripcion_Almacen VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
);
--LlavePrimaria Almacen
ALTER TABLE Almacen
ADD CONSTRAINT Pk_Almacen PRIMARY KEY (IdAlmacen)


--AltaMedica--

CREATE TABLE AltaMedica
(
IdAltaMedica INT IDENTITY (1,1),
fecha Date NOT NULL,
descripcion_AltaMedica VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
);
--LlavePrimaria AltaMedica
ALTER TABLE AltaMedica
ADD CONSTRAINT Pk_AltaMedica PRIMARY KEY (IdAltaMedica)


--Ambulancia--
CREATE TABLE Ambulancia
(
IdAmbulancia INT IDENTITY (1,1),
matricula VARCHAR(20) NOT NULL,
numAmbulancia INT NOT NULL,
descripcion VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
);
--LlavePrimaria
ALTER TABLE Ambulancia
ADD CONSTRAINT Pk_Ambulancia PRIMARY KEY (IdAmbulancia)


--AnalisisMedico--
CREATE TABLE AnalisisMedico
(
IdAnalisisMedico INT IDENTITY (1,1),
codigo Int NOT NULL,
descripcion_AnalisisMedico VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
);
--LlavePrimaria
ALTER TABLE AnalisisMedico
ADD CONSTRAINT Pk_Analisis_Medico PRIMARY KEY (IdAnalisisMedico)


--Asamblea --
CREATE TABLE Asamblea 
(
IdAsamblea  INT IDENTITY (1,1),
fecha Datetime,
descripcion_Asamblea VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
IdHorario INT NOT NULL
);
--LlavePrimaria
ALTER TABLE Asamblea
ADD CONSTRAINT Pk_Asamblea PRIMARY KEY (IdAsamblea)



--Area --
CREATE TABLE Area 
(
IdArea INT IDENTITY (1,1),
descripcion_Area VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
IdTipoDeArea INT NOT NULL,
);
--LlavePrimaria
ALTER TABLE Area
ADD CONSTRAINT Pk_Area PRIMARY KEY (IdArea)


--Articulo --
CREATE TABLE Articulo 
(
IdArticulo  INT IDENTITY (1,1),
numArticulo INT NOT NULL,
nombreArticulo VARCHAR(50) NOT NULL,
cantidad INT NOT NULL,
descripcion_Articulo VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,

);
--LlavePrimaria
ALTER TABLE Articulo
ADD CONSTRAINT Pk_Articulo PRIMARY KEY (IdArticulo)


--Cama --
CREATE TABLE Cama 
(
IdCama  INT IDENTITY (1,1),
numCama INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
);
--LlavePrimaria
ALTER TABLE Cama
ADD CONSTRAINT Pk_Cama PRIMARY KEY (IdCama)

--CartillaSalud --
CREATE TABLE CartillaSalud 
(
IdCartillaSalud  INT IDENTITY (1,1),
Nss VARCHAR(11) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
IdCitaMedica INT NOT NULL,
);
--LlavePrimaria
ALTER TABLE CartillaSalud
ADD CONSTRAINT Pk_CartillaSalud PRIMARY KEY (IdCartillaSalud)



--CedulaMedica --
CREATE TABLE CedulaMedica 
(
IdCedulaMedica INT IDENTITY (1,1),
numCedulaMedica INT NOT NULL,
nombre VARCHAR(50) NOT NULL,
descripcion VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
IdEspecialidad INT NOT NULL,
);
--LlavePrimaria
ALTER TABLE CedulaMedica
ADD CONSTRAINT Pk_CedulaMedica PRIMARY KEY (IdCedulaMedica)



--Cirugia --
CREATE TABLE Cirugia 
(
IdCirugia INT IDENTITY (1,1),
fecha Datetime,
numCirugia INT NOT NULL,
nombre VARCHAR(50) NOT NULL,
descripcion VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,

);
--LlavePrimaria
ALTER TABLE Cirugia
ADD CONSTRAINT Pk_Cirugia PRIMARY KEY (IdCirugia)

--Cliente --
CREATE TABLE Cliente 
(
IdCliente INT IDENTITY (1,1),
nombre VARCHAR(50) NOT NULL,
apellidoPaterno VARCHAR(50) NOT NULL,
apellidoMaterno VARCHAR(50) NOT NULL,
CURP VARCHAR(18) NOT NULL,
calle VARCHAR(50) NOT NULL,
numero INT NOT NULL,
colonia VARCHAR(50) NOT NULL,
ciudad VARCHAR(50) NOT  NULL,
estado VARCHAR(50) NOT NULL,
codigoPostal INT NOT NULL,
telefono VARCHAR(10) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
IdFacturaCliente INT NOT NULL,
IdPagoCliente INT NOT NULL,
IdCompraCliente INT NOT NULL
);
--LlavePrimaria
ALTER TABLE Cliente
ADD CONSTRAINT Pk_Cliente PRIMARY KEY (IdCliente)


--CitaMedica --
CREATE TABLE CitaMedica
(
IdCitaMedica INT IDENTITY (1,1),
fecha Datetime,
numCita INT NOT NULL,
descripcion_CitaMedica VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
);
--LlavePrimaria
ALTER TABLE CitaMedica
ADD CONSTRAINT Pk_CitaMedica PRIMARY KEY (IdCitaMedica)


--ClinicaMedica --
CREATE TABLE ClinicaMedica 
(
IdClinicaMedica INT IDENTITY (1,1),
numClinicaMedica INT NOT NULL,
nombreClinicaMedica VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
);
--LlavePrimaria
ALTER TABLE ClinicaMedica
ADD CONSTRAINT Pk_ClinicaMedica PRIMARY KEY (IdClinicaMedica)

--Comida --
CREATE TABLE Comida 
(
IdComida INT IDENTITY (1,1),
nombreComida VARCHAR(50) NOT NULL,
descripcion VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
);
--LlavePrimaria
ALTER TABLE Comida
ADD CONSTRAINT Pk_Comida PRIMARY KEY (IdComida)

--CompraCliente --
CREATE TABLE CompraCliente
(
IdCompraCliente INT IDENTITY (1,1),
fecha Datetime,
descripcion_CompraCliente varchar(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
);
--LlavePrimaria
ALTER TABLE CompraCliente
ADD CONSTRAINT Pk_CompraCliente PRIMARY KEY (IdCompraCliente)


--CompraUnidadMedica --
CREATE TABLE CompraUnidadMedica 
(
IdCompraUnidadMedica INT IDENTITY (1,1),
fecha Datetime,
descripcion varchar(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
IdArticulo INT NOT NULL,
IdProveedor INT NOT NULL
);
--LlavePrimaria
ALTER TABLE CompraUnidadMedica
ADD CONSTRAINT Pk_CompraUnidadMedica PRIMARY KEY (IdCompraUnidadMedica)



--ConsultaMedica --
CREATE TABLE ConsultaMedica
(
IdConsultaMedica INT IDENTITY (1,1),
fecha Datetime,
numConsultaMedica INT NOT NULL,
descripcion VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
);
--LlavePrimaria
ALTER TABLE ConsultaMedica
ADD CONSTRAINT Pk_ConsultaMedica PRIMARY KEY (IdConsultaMedica)


CREATE TABLE Edificio
(
IdEdificio INT IDENTITY (1,1),
numEdificio INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
IdElevador INT NOT NULL,
IdFarmacia INT NOT NULL,
IdArea INT NOT NULL,
IdReglamento INT NOT NULL,
IdHabitacion INT NOT NULL,
);
--LlavePrimaria
ALTER TABLE Edificio
ADD CONSTRAINT Pk_Edificio PRIMARY KEY (IdEdificio)
--Elevador --
CREATE TABLE Elevador
(
IdElevador INT IDENTITY (1,1),
numElevador INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
);
--LlavePrimaria
ALTER TABLE Elevador
ADD CONSTRAINT Pk_Elevador PRIMARY KEY (IdElevador)

--Empleado --
CREATE TABLE Empleado
(
IdEmpleado INT IDENTITY (1,1),
numFichaEmpleado INT NOT NULL,
nombre VARCHAR(50) NOT NULL,
apellidoPaterno VARCHAR(50) NOT NULL,
apellidoMaterno VARCHAR(50) NOT NULL,
calle VARCHAR(50) NOT NULL,
numero INT NOT NULL,
colonia VARCHAR(50) NOT NULL,
ciudad VARCHAR(50) NOT  NULL,
estado VARCHAR(50) NOT NULL,
codigoPostal INT NOT NULL,
RFC VARCHAR(13) NOT NULL,
telefono VARCHAR(10) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,

--Foraneas
IdConsultaMedica INT NOT NULL,
IdAnalisisMedico  INT NOT NULL,
IdTratamiento  INT NOT NULL,
IdComida  INT NOT NULL,
IdRecetaMedica  INT NOT NULL,
IdClinicaMedica  INT NOT NULL,
IdCompraUnidadMedica  INT NOT NULL,
IdCedulaMedica  INT NOT NULL,
IdCirugia  INT NOT NULL,
IdAsamblea  INT NOT NULL,
IdTransporteEmpleado  INT NOT NULL,
IdMantenimiento  INT NOT NULL
--LlavePrimaria
CONSTRAINT PkEmpleado PRIMARY KEY (IdEmpleado)
);
--Enfermedad --
CREATE TABLE Enfermedad
(
IdEnfermedad  INT IDENTITY (1,1),
numEnfermedad INT NOT NULL,
nombre VARCHAR(50) NOT NULL,
descripcion_Enfermedad VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
IdTipoEnfermedad  INT NOT NULL,

--LlavePrimaria
CONSTRAINT Pk_Enfermedad PRIMARY KEY (IdEnfermedad)
);


--Equipo --
CREATE TABLE Equipo
(
IdEquipo INT IDENTITY (1,1),
nombre VARCHAR(50) NOT NULL,
cantidad INT NOT NULL,
descripcion_Equipo VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
--LlavePrimaria
CONSTRAINT Pk_Equipo PRIMARY KEY (IdEquipo)

);
--Especialidad --
CREATE TABLE Especialidad
(
IdEspecialidad INT IDENTITY (1,1),
nombre VARCHAR(50) NOT NULL,
descripcion_Especialidad VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
--LlavePrimaria
CONSTRAINT Pk_Especialidad PRIMARY KEY (IdEspecialidad)

);
--Estudiante --
CREATE TABLE Estudiante
(
IdEstudiante INT IDENTITY (1,1),
nombreEstudiante VARCHAR(50) NOT NULL,
apellidoPaterno VARCHAR(50) NOT NULL,
apellidoMaterno VARCHAR(50) NOT NULL,
Institucion VARCHAR(50) NOT NULL,
matricula VARCHAR(9) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
--LlavePrimaria
CONSTRAINT Pk_Estudiante PRIMARY KEY (IdEstudiante)
);


--Evento --
CREATE TABLE Evento
(
IdEvento INT IDENTITY (1,1),
nombre VARCHAR(50) NOT NULL,
fecha Datetime NOT NULL,
descripcion_Evento VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
IdHorario INT NOT NULL,
IdAsamblea INT NOT NULL
--LlavePrimaria
CONSTRAINT Pk_Evento PRIMARY KEY (IdEvento)
);



--ExpedienteMedico --
CREATE TABLE ExpedienteMedico
(
IdExpedienteMedico INT IDENTITY (1,1),
numExpedienteMedico INT NOT NULL,
fecha Date NOT NULL,
descripcion_ExpedienteMedico VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
--LlavePrimaria
CONSTRAINT Pk_ExpedienteMedico PRIMARY KEY (IdExpedienteMedico)
);
--FacturaCliente --
CREATE TABLE FacturaCliente
(
IdFacturaCliente INT IDENTITY (1,1),
fecha Date NOT NULL,
descripcion_FacturaCliente VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
--LlavePrimaria
CONSTRAINT Pk_FacturaCliente PRIMARY KEY (IdFacturaCliente)
);
--FacturaProveedor --
CREATE TABLE FacturaProveedor
(
IdFacturaProveedor INT IDENTITY (1,1),
fecha Date NOT NULL,
descripcion_FacturaProveedor VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
--LlavePrimaria
CONSTRAINT Pk_FacturaProveedor PRIMARY KEY (IdFacturaProveedor)
);

--Farmacia --
CREATE TABLE Farmacia
(
IdFarmacia INT IDENTITY (1,1),
descripcion_Farmacia VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
IdMedicamento INT NOT NULL,
IdArticulo INT NOT NULL,
IdPagoCliente INT NOT NULL,
IdCompraCliente INT NOT NULL,
--LlavePrimaria
CONSTRAINT Pk_IdFarmacia PRIMARY KEY (IdFarmacia)
);
--Habitacion --
CREATE TABLE Habitacion
(
IdHabitacion INT IDENTITY (1,1),
numHabitacion INT NOT NULL,
descripcion_Habitacion VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
--LlavePrimaria
CONSTRAINT Pk_Habitacion PRIMARY KEY (IdHabitacion)
);

--Horario --
CREATE TABLE Horario
(
IdHorario INT IDENTITY (1,1),
descripcion_Horario VARCHAR(50) NOT NULL,
horaApertura time NOT NULL,
horaCierre time NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
--LlavePrimaria
CONSTRAINT Pk_Horario PRIMARY KEY (IdHorario)
);

--Ingreso --
CREATE TABLE Ingreso
(
IdIngreso INT IDENTITY (1,1),
numIngreso INT NOT NULL,
fecha Datetime,
estatus BIT DEFAULT 1 NOT NULL
--LlavePrimaria
CONSTRAINT Pk_Ingreso PRIMARY KEY (IdIngreso)
);
--Mantenimiento --
CREATE TABLE Mantenimiento
(
IdMantenimiento INT IDENTITY (1,1),
fecha Datetime NOT NULL,
descripcion_Mantenimiento VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
--LlavePrimaria
CONSTRAINT Pk_IdMantenimiento PRIMARY KEY (IdMantenimiento)
);
--Medicamento --
CREATE TABLE Medicamento
(
IdMedicamento INT IDENTITY (1,1),
numMedicamento INT NOT NULL,
nombreMedicamento VARCHAR(50) NOT NULL,
descripcion_Medicamento VARCHAR(50)NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
--LlavePrimaria
CONSTRAINT Pk_Medicamento PRIMARY KEY (IdMedicamento)
);

--Paciente --
CREATE TABLE Paciente
(
IdPaciente INT IDENTITY (1,1),
nombre VARCHAR(50) NOT NULL,
apellidoPaterno VARCHAR(50) NOT NULL,
apellidoMaterno VARCHAR(50) NOT NULL,
fechaNacimiento Date,
CURP VARCHAR(18) NOT NULL,
calle VARCHAR(50) NOT NULL,
numero INT NOT NULL,
colonia VARCHAR(50) NOT NULL,
ciudad VARCHAR(50) NOT  NULL,
estado VARCHAR(50) NOT NULL,
codigoPostal INT NOT NULL,
telefono VARCHAR(10) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
--Foraneas
IdEnfermedad INT NOT NULL,
IdCitaMedica INT NOT NULL,
IdCama INT NOT NULL,
IdAltaMedica INT NOT NULL,
IdConsultaMedica INT NOT NULL,
IdAnalisisMedico  INT NOT NULL,
IdTratamiento  INT NOT NULL,
IdComida  INT NOT NULL,
IdRecetaMedica  INT NOT NULL,
IdExpedienteMedico  INT NOT NULL,
IdCartillaSalud  INT NOT NULL,
IdIngreso INT NOT NULL,
--LlavePrimaria
CONSTRAINT PkPaciente PRIMARY KEY (IdPaciente)
);
--PagoCliente --
CREATE TABLE PagoCliente
(
IdPagoCliente INT IDENTITY (1,1),
fecha Datetime NOT NULL,
descripcion_PagoCliente VARCHAR(50) NOT NULL,
monto decimal NOT NULL ,
estatus BIT DEFAULT 1 NOT NULL
--LlavePrimaria
CONSTRAINT Pk_PagoCliente PRIMARY KEY (IdPagoCliente)
);

--PagoUnidadMedica --
CREATE TABLE PagoUnidadMedica
(
IdPagoUnidadMedica INT IDENTITY (1,1),
fecha Datetime NOT NULL,
descripcion_PagoUnidadMedica VARCHAR(50) NOT NULL,
monto decimal  NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
IdFacturaProveedor INT NOT NULL,
--LlavePrimaria
CONSTRAINT Pk_PagoUnidadMedica PRIMARY KEY (IdPagoUnidadMedica)

);


--Practicante --
CREATE TABLE Practicante
(
IdPracticante INT IDENTITY (1,1),
nombre VARCHAR(50) NOT NULL,
apellidoPaterno VARCHAR(50) NOT NULL,
apellidoMaterno VARCHAR(50) NOT NULL,
matricula VARCHAR(9) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
--LlavePrimaria
CONSTRAINT Pk_Practicante PRIMARY KEY (IdPracticante)
);
--Proveedor --
CREATE TABLE Proveedor
(
IdProveedor INT IDENTITY (1,1),
nombre VARCHAR(50) NOT NULL,
RFC VARCHAR(12) NOT NULL,
telefono VARCHAR(10) NOT NULL,
calle VARCHAR(50) NOT NULL,
numero INT NOT NULL,
colonia VARCHAR(50) NOT NULL,
ciudad VARCHAR(50) NOT NULL,
estado VARCHAR(50) NOT NULL,
codigopostal INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
IdFacturaProveedor INT NOT NULL,

--LlavePrimaria
CONSTRAINT Pk_Proveedor PRIMARY KEY (IdProveedor)
);


--RecetaMedica --
CREATE TABLE RecetaMedica
(
IdRecetaMedica INT IDENTITY (1,1),
numRecetaMedica INT NOT NULL,
descripcion_RecetaMedica VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
IdMedicamento  INT NOT NULL,
--LlavePrimaria
CONSTRAINT Pk_RecetaMedica PRIMARY KEY (IdRecetaMedica)
);


--Reglamento --
CREATE TABLE Reglamento
(
IdReglamento INT IDENTITY (1,1),
descripcion VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
--LlavePrimaria
CONSTRAINT Pk_Reglamento PRIMARY KEY (IdReglamento)
);
--Residencia --
CREATE TABLE Residencia
(
IdResidencia INT IDENTITY (1,1),
fechaIncio Date NOT NULL,
fechaTermino Date NOT NULL,
descripcion VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
IdPracticante  INT NOT NULL
--LlavePrimaria
CONSTRAINT Pk_Residencia PRIMARY KEY (IdResidencia)
);

--ServicioSanitario --
CREATE TABLE ServicioSanitario
(
IdServicioSanitario INT IDENTITY (1,1),
fecha Date NOT NULL,
descripcion_ServicioSanitario VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
--LlavePrimaria
CONSTRAINT Pk_ServicioSanitario PRIMARY KEY (IdServicioSanitario)
);


--ServicioSocial --
CREATE TABLE ServicioSocial
(
IdServicioSocial INT IDENTITY (1,1),
fechaIncio Date NOT NULL,
fechaTermino Date NOT NULL,
descripcion VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
IdEstudiante  INT NOT NULL,
--LlavePrimaria
CONSTRAINT Pk_ServicioSocial PRIMARY KEY (IdServicioSocial)
);

--TipoArea --
CREATE TABLE TipoDeArea
(
IdTipoDeArea INT IDENTITY (1,1),
nombre VARCHAR(50) NOT NULL,
descripcion_TipoArea VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
--LlavePrimaria
CONSTRAINT Pk_TipoArea PRIMARY KEY (IdTipoDeArea)
);
--TipoEnfermedad --
CREATE TABLE TipoEnfermedad
(
IdTipoEnfermedad INT IDENTITY (1,1),
nombre_TipoEnfermedad VARCHAR(50) NOT NULL,
descripcion VARCHAR(50) NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
--LlavePrimaria
CONSTRAINT Pk_TipoEnfermedad PRIMARY KEY (IdTipoEnfermedad)
);
--TransporteEmpleado --
CREATE TABLE TransporteEmpleado
(
IdTransporteEmpleado INT IDENTITY (1,1),
numTransporteEmpleado INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
--LlavePrimaria
CONSTRAINT Pk_TransporteEmpleado PRIMARY KEY (IdTransporteEmpleado)
);
--Tratamiento --
CREATE TABLE Tratamiento
(
IdTratamiento INT IDENTITY (1,1),
nombre VARCHAR(50) NOT NULL,
descripcion_Tratamiento VARCHAR(50) NOT NULL,
fechaIncio Date NOT NULL,
fechaTermino Date NOT NULL,
estatus BIT DEFAULT 1 NOT NULL
--LlavePrimaria
CONSTRAINT Pk_Tratamiento PRIMARY KEY (IdTratamiento)
);

CREATE TABLE UnidadMedica
(
IdUnidadMedica INT IDENTITY (1,1),
nombre VARCHAR(50) NOT NULL,
telefono VARCHAR(10) NOT NULL,
calle VARCHAR(50) NOT NULL,
numero INT NOT NULL,
colonia VARCHAR(50) NOT NULL,
ciudad VARCHAR(50) NOT  NULL,
estado VARCHAR(50) NOT NULL,
codigoPostal INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
--Foraneas
IdEdificio INT NOT NULL,
IdEquipo INT NOT NULL,
IdResidencia INT NOT NULL,
IdServicioSanitario INT NOT NULL,
IdAlmacen INT NOT NULL,
IdPagoUnidadMedica INT NOT NULL,
IdEmpleado INT NOT NULL,
IdReglamento INT NOT NULL,
IdAsamblea INT NOT NULL,
IdEvento INT NOT NULL,
IdVisita INT NOT NULL,
IdHorario INT NOT NULL,
IdServicioSocial INT NOT NULL,
IdCliente INT NOT NULL,
IdAmbulancia INT NOT NULL,
IdFacturaCliente INT NOT NULL,
);
--LlavePrimaria
ALTER TABLE UnidadMedica
ADD CONSTRAINT PkUnidadMedica PRIMARY KEY (IdUnidadMedica)
--Visita --
CREATE TABLE Visita
(
IdVisita INT IDENTITY (1,1),
horaInicial Time NOT NULL,
horaFinal Time NOT NULL,
numPaseVisita INT NOT NULL,
estatus BIT DEFAULT 1 NOT NULL,
IdHorario INT NOT NULL
--LlavePrimaria
CONSTRAINT Pk_Visita PRIMARY KEY (IdVisita)
);


Insert into Almacen(nombre,descripcion_Almacen,estatus)
Values('Almacen','Almacen 1',1),
('Almacen_2','Esto es almacen 2',1),
('Almacen_3','Esto es almacen 3',1),
('Almacen_4','Esto es almacen 4',1),
('Almacen_5','Esto es almacen 5',1),
('Almacen_6','Esto es almacen 6',1),
('Almacen_7','Esto es almacen 7',1),
('Almacen_8','Esto es almacen 8',1),
('Almacen_9','Esto es almacen 9',1),
('Almacen_10','Esto es almacen 10',1);
--AltaMedica--
Insert into AltaMedica(Fecha,descripcion_AltaMedica,estatus)
Values('05/12/2022','Se dio de alta el paciente 1',1),
('03/12/2022','Se dio de alta el paciente 2',1),
('10/11/2022','Se dio de alta el paciente 3',1),
('03/09/2022','Se dio de alta el paciente 4',1),
('02/12/2022','Se dio de alta el paciente 5',1),
('05/12/2022','Se dio de alta el paciente 6',1),
('08/12/2022','Se dio de alta el paciente 7',1),
('09/12/2022','Se dio de alta el paciente 8',1),
('10/12/2022','Se dio de alta el paciente 9',1),
('06/12/2022','Se dio de alta el paciente 10',1);
--Ambulancia--
Insert into Ambulancia(matricula,numAmbulancia,descripcion,estatus)
Values('5045','1','Ambulancia con la matricula 5045',1),
('5045','2','Ambulancia con la matricula 5045',1),
('5035','3','Ambulancia con la matricula 5045',1),
('5055','4','Ambulancia con la matricula 5045',1),
('5065','5','Ambulancia con la matricula 5045',1),
('5035','6','Ambulancia con la matricula 5045',1),
('5025','7','Ambulancia con la matricula 5045',1),
('5015','8','Ambulancia con la matricula 5045',1),
('5095','9','Ambulancia con la matricula 5045',1),
('5145','10','Ambulancia con la matricula 5045',1);
--AnalisisMedico--
Insert into AnalisisMedico(codigo,descripcion_AnalisisMedico,estatus)
Values(1,'descripcion_AnalisisMedico',1), 
(2,'descripcion_AnalisisMedico',1),
(3,'Anestologia',1),
(4,'Cuidados',1),
(5,'Digestivo',1),
(6,'Hematologia',1),
(7,'Medicina Interna',1),
(8,'Oncologia',1),
(9,'Urgencias',1),
(10,'Rehabilitacion',1);
--Area--
Insert into Area(descripcion_Area,estatus,IdTipoDeArea)
Values('Cardiologia',1,1), 
('Urologia',1,2),
('Anestologia',1,3),
('Cuidados',1,4),
('Digestivo',1,5),
('Hematologia',1,6),
('Medicina Interna',1,7),
('Oncologia',1,8),
('Urgencias',1,9),
('Rehabilitacion',1,10);
Select * from Asamblea
Insert into Articulo(numArticulo,nombreArticulo,cantidad,descripcion_Articulo,estatus)
values
(1,'Articulo 1',3,'Este es el articulo 1',1),
(2,'Articulo 2',6,'Este es el articulo 2',1),
(3,'Articulo 3',7,'Este es el articulo 3',1),
(4,'Articulo 4',4,'Este es el articulo 4',1),
(5,'Articulo 5',8,'Este es el articulo 5',1),
(1,'Articulo 6',1,'Este es el articulo 6',1),
(2,'Articulo 7',10,'Este es el articulo 7',1),
(3,'Articulo 8',5,'Este es el articulo 8',1),
(4,'Articulo 9',2,'Este es el articulo 9',1),
(5,'Articulo 10',9,'Este es el articulo 10',1);

Insert into Asamblea(Fecha,descripcion_Asamblea,estatus,IdHorario)
Values('03/12/2022',' la Asamblea 1',1,1), 
('03/12/2022',' la Asamblea 2',1,2),
('03/12/2022',' la Asamblea 3',1,3),
('03/12/2022',' la Asamblea 4',1,1),
('03/12/2022',' la Asamblea 5',1,2),
('03/12/2022',' la Asamblea 6',1,3),
('03/12/2022',' la Asamblea 7',1,2),
('03/12/2022',' la Asamblea 8',1,3),
('03/12/2022',' la Asamblea 9',1,1),
('03/12/2022',' la Asamblea 10',1,2);
Insert into Cama(numCama,estatus)
Values(1,1),
(2,1),
(3,1),
(4,1),
(5,1),
(6,1),
(7,1),
(8,1),
(9,1),
(10,1);
Insert into CartillaSalud(Nss,estatus,IdCitaMedica)
Values(1508051,601,1),
(1508052,602,2),
(1508053,603,1),
(1508054,604,1),
(1508055,605,2),
(1508056,606,4),
(1508057,607,3),
(1508058,608,2),
(1508059,609,1),
(1508010,610,4);

Insert into CedulaMedica(nombre,numCedulaMedica,descripcion,estatus,IdEspecialidad)
Values('Maria',10,'Licenciatura',1,1),
('Maria',111,'Licenciatura',1,2),
('Carlos',121,'Licenciatura',1,3),
('Emauel',131,'Licenciatura',1,3),
('Ronaldo',141,'Licenciatura',1,4),
('Luis',151,'Licenciatura',1,4),
('Edson',161,'Licenciatura',1,2),
('Max',171,'Licenciatura',1,5),
('Juan',181,'Licenciatura',1,1),
('Pedro',191,'Licenciatura',1,8),
('Alvaro',201,'Licenciatura',1,9);
--AltaMedica--
Insert into Cirugia(Fecha,numCirugia,nombre,descripcion,estatus)
Values('05/12/2022','num1','cirugia1','descripcion1',1),
('05/12/2022','num2','cirugia2','descripcion2',1),
('05/12/2022','num3','cirugia2','descripcion3',1),
('05/12/2022','num4','cirugia2','descripcion4',1),
('05/12/2022','num5','cirugia2','descripcion5',1),
('05/12/2022','num6','cirugia2','descripcion6',1),
('05/12/2022','num7','cirugia2','descripcion7',1),
('05/12/2022','num8','cirugia2','descripcion8',1),
('05/12/2022','num9','cirugia2','descripcion9',1),
('05/12/2022','num10','cirugia2','descripcion10',1);

Insert into CitaMedica(fecha,numCita,descripcion_CitaMedica,estatus)
Values
('05/12/2022',5,'Esta es la cita 1',1),
('03/12/2022',1,'Esta es la cita 1',1),
('02/12/2022',2,'Esta es la cita 1',1),
('01/12/2022',3,'Esta es la cita 1',1),
('10/12/2022',4,'Esta es la cita 1',1),
('05/12/2022',6,'Esta es la cita 1',1),
('03/12/2022',7,'Esta es la cita 1',1),
('02/12/2022',8,'Esta es la cita 1',1),
('01/12/2022',9,'Esta es la cita 1',1),
('10/12/2022',10,'Esta es la cita 1',1);

Insert into Cliente(nombre,apellidoPaterno,apellidoMaterno,curp,calle,colonia,telefono,numero,
codigopostal,estatus,IdFacturaCliente,IdPagoCliente,IdCompraCliente)
Values('Maximiliano','Ramos,','Duran','RADR201698','Zapata','Barrera','8661234567,'
,'706','50699',1,1,1,1),
('Alejandro','Zapata,','Gomez','RADR201698','Zapata','Hipodromo','8661236567,'
,'710','50692',1,1,1,1),
('Alvaro','Ramos,','Duran','ALVDR206628','Independencia','Del rio','8661294867,'
,'960','69785',1,1,1,1),
('Pedro','Martinez,','Duran','PEMA901098','Almaden','Zona Centro','8661697567,'
,'697','25781',1,1,1,1),
('Jaqueline','Torres,','Sanchez','JATO971698','Aguilar','Flores','8666924567,'
,'487','69786',1,1,1,1),
('Emanuel','Perales,','Valdez','EMPE201698','Progreso','Directo','8661237967,'
,'983','10563',1,1,1,1),
('Martin','Zapata,','Guzman','MAZA981620','Emiliano','Aguilar','8661236927,'
,'638','69809',1,1,1,1),
('Raul','Sepulveda,','Gomez','RASE952698','Hidalgo','Tecnologico','8661236667,'
,'269','50691',1,1,1,1),
('Maria','Guadalupe,','Torres','MAGU971220','Revolucion','Aguilar','8666976927,'
,'108','50506',1,1,1,1),
('Raul','Sierra,','Ibarra','RASE201698','Hidalgo','Tecnologico','8661269827,'
,'209','50691',1,1,1,1);

Insert into ClinicaMedica(numClinicaMedica,NombreClinicaMedica,estatus)
Values(1,' Clinica 1',1), 
(2,' Clinica 2',1), 
(3,' Clinica 3',1), 
(4,' Clinica 4',1), 
(5,' Clinica 5',1), 
(6,' Clinica 6',1), 
(7,' Clinica 7',1), 
(8,' Clinica 8',1), 
(9,' Clinica 9',1), 
(10,' Clinica 10',1);

Insert into Comida(NombreComida,descripcion,estatus)
Values('Platillo 1','es la comida 1',1),
('Platillo 2','es la comida 2',1),
('Platillo 3','es la comida 3',1),
('Platillo 4','es la comida 4',1),
('Platillo 5','es la comida 5',1),
('Platillo 6','es la comida 6',1),
('Platillo 7','es la comida 7',1),
('Platillo 8','es la comida 8',1),
('Platillo 9','es la comida 9',1),
('Platillo 10','es la comida10 ',1);

Insert into CompraCliente(fecha,descripcion_CompraCliente,estatus)
Values('05/12/2022','Esta es la primera compra de un cliente',1),
('05/12/2022','Esta es la primera compra de un cliente',1),
('05/12/2022','Esta es la primera compra de un cliente',1),
('05/12/2022','Esta es la primera compra de un cliente',1),
('05/12/2022','Esta es la primera compra de un cliente',1),
('05/12/2022','Esta es la primera compra de un cliente',1),
('05/12/2022','Esta es la primera compra de un cliente',1),
('05/12/2022','Esta es la primera compra de un cliente',1),
('05/12/2022','Esta es la primera compra de un cliente',1),
('05/12/2022','Esta es la primera compra de un cliente',1);


Insert into CompraUnidadMedica(fecha,descripcion,estatus,IdArticulo)
Values('05/12/2022','Una peque?a descripcion',1,4),
('05/12/2022','Una peque?a descripcion',1,4),
('05/12/2022','Una peque?a descripcion',1,9),
('05/12/2022','Una peque?a descripcion',1,8),
('05/12/2022','Una peque?a descripcion',1,7),
('05/12/2022','Una peque?a descripcion',1,5),
('05/12/2022','Una peque?a descripcion',1,6),
('05/12/2022','Una peque?a descripcion',1,1),
('05/12/2022','Una peque?a descripcion',1,2),
('05/12/2022','Una peque?a descripcion',1,3);
Insert into ConsultaMedica(fecha,descripcion,estatus)
Values
('05/12/2022','Descripcion',1),
('05/12/2022','Descripcion',1),
('05/12/2022','Descripcion',1),
('05/12/2022','Descripcion',1),
('05/12/2022','Descripcion',1),
('05/12/2022','Descripcion',1),
('05/12/2022','Descripcion',1),
('05/12/2022','Descripcion',1),
('05/12/2022','Descripcion',1),
('05/12/2022','Descripcion',1);

Insert into Edificio(numEdificio,estatus,IdElevador,IdFarmacia,IdArea,IdReglamento,
IdHabitacion)
Values 
(1,1,1,1,1,1),
(1,1,2,1,1,1),
(1,1,3,1,3,1),
(1,1,4,1,5,1),
(1,1,5,1,6,1),
(1,1,6,1,7,1),
(1,1,7,1,8,1),
(1,1,8,1,10,1),
(1,1,9,1,5,1),
(1,1,10,1,9,1);
Insert into Elevador(numElevador,estatus)
Values
(1,1),
(2,1),
(3,1),
(4,1),
(5,1),
(6,1),
(7,1),
(8,1),
(9,1),
(10,1);

INSERT INTO  Empleado
(
nombre,
apellidoPaterno,
apellidoMaterno,
RFC,
calle ,
colonia,
numero ,
telefono,
estatus,
--Foraneas
IdConsultaMedica,
IdAnalisisMedico,
IdTratamiento,
IdComida,
IdRecetaMedica,
IdClinicaMedica  ,
IdCompraUnidadMedica ,
IdCedulaMedica ,
IdCirugia ,
IdAsamblea,
IdTransporteEmpleado,
IdMantenimiento)
VALUES
('Luis','Torres','Sanchez','LUTO970510','Independencia','Zona Centro','106','8661526987',1,1,1,1,1,1,1,1,1,1,1,1,1),
('Carlos','Manuel','Torres','CAMA970510','Aguilar','Zona Centro','687','8697976987',1,2,1,1,1,1,1,1,1,1,1,1,1),
('Alvaro','Ramos','Duran','ALVDR206628','Aguilar','Independencia','696','8876976987',1,2,1,1,1,1,1,1,1,1,1,1,1),
('Carlos','Manuel','Torres','PEMA901098','Almaden','Gomez','336','8666973687',1,2,1,1,1,1,1,1,1,1,1,1,1),
('Jaqueline','Torres','Torres','JATO971698','Aguilar','Lomas','106','8669976987',1,2,1,1,1,1,1,1,1,1,1,1,1),
('Emanuel','Perales','Sanchez','EMPE201698','Independencia','Zona Industrial','106','8615426987',1,1,1,1,1,1,1,1,1,1,1,1,1),
('Martin','Zapata','Valdez','MAZA981620','Emiliano',' Deportiva','136','8666976987',1,2,1,1,1,1,1,1,1,1,1,1,1),
('Raul','Sepulveda','Gomez','RASE952698','Aguilar','Hidalgo','116','8669776987',1,2,1,1,1,1,1,1,1,1,1,1,1),
('Maximiliano','Ramos','Duran','MARA201698','Aguilar',' Centro Sur','136','8661236987',1,2,1,1,1,1,1,1,1,1,1,1,1),
('Carlos','Manuel','Torres','CAMA970510','Hidalgo','Reforma','126','8666963987',1,2,1,1,1,1,1,1,1,1,1,1,1);


Insert into Enfermedad(numEnfermedad,nombre,descripcion_Enfermedad,estatus,IdTipoEnfermedad)
Values
(1,'Cancer 1','Enfermedad',1,1),
(2,'Asma 2','Enfermedad',1,1),
(3,'Autismo 3','Enfermedad',1,1),
(4,'Diabetes 4','Enfermedad',1,1),
(5,'Gripe 5','Enfermedad',1,1),
(6,'Covid 6','Enfermedad',1,1),
(7,'Influenza 7','Enfermedad',1,1),
(8,'Rabia 8','Enfermedad',1,1),
(9,'Tabaquismo 9','Enfermedad',1,1),
(10,'Rabia 10','Enfermedad',1,1);

Insert into Equipo(nombre,cantidad,descripcion_Equipo,estatus)
Values
('Respirador  1','2','Usar el uso correcto',1),
('M?quina de anestesia 2','3','Usar el uso correcto',1),
('Esterilizadores 3','5','Usar el uso correcto',1),
('Sistemas de estr?s: 4','6','Usar el uso correcto',1),
('electroquir?rgicas 5','8','Usar el uso correcto',1),
('Ultrasonido  6','8','Usar el uso correcto',1),
('Desfibrilador 7','8','Usar el uso correcto',1),
('electrocardiograma 8','8','Usar el uso correcto',1),
('Monitor de signos vitales 9','7','Usar el uso correcto',1),
('mesas quir?rgicas 10','6','Usar el uso correcto',1);

Insert into Especialidad(nombre,descripcion_Especialidad,estatus)
Values
('Especialidad 1', 'Acerca de la especialidad,',1),
('Especialidad 2', 'Acerca de la especialidad,',1),
('Especialidad 3', 'Acerca de la especialidad,',1),
('Especialidad 4', 'Acerca de la especialidad,',1),
('Especialidad 5', 'Acerca de la especialidad,',1),
('Especialidad 6', 'Acerca de la especialidad,',1),
('Especialidad 7', 'Acerca de la especialidad,',1),
('Especialidad 8', 'Acerca de la especialidad,',1),
('Especialidad 9', 'Acerca de la especialidad,',1),
('Especialidad 10', 'Acerca de la especialidad,',1);
--Visualizar Registro de tablas--

Insert Into  Estudiante
(nombreEstudiante, 
apellidoPaterno,
apellidoMaterno,
matricula,
Institucion,
estatus 
)values
('Pedro','Ramirez','Torres', '15643849','TEC',1),
('Luis','Ibarra','Gomez', '15643849','TEC',1),
('Juan','Nu?ez','Palacios', '1569849','TEC',1),
('Morata','Suarez','Sanchez', '15642849','TEC',1),
('Lionel','Ramirez','Perales', '15646849','TEC',1),
('Ronaldo','Ramirez','Zapata', '15647849','FIME',1),
('Esquivel','Idelfonso','Torres', '15689849','FIME',1),
('Raul','Tamar','Torres', '15649989','FIME',1),
('Sebas','Ramirez','Zamora', '156483749','FIME',1);

Insert into Evento(nombre,fecha,descripcion_Evento,estatus,IdHorario,IdAsamblea)
Values
('Evento 1','10/10/2022','Una evento muy bueno',1,1,3),
('Evento 2','10/10/2022','Una evento muy bueno',1,1,3),
('Evento 3','10/10/2022','Una evento muy bueno',1,1,3),
('Evento 4','10/10/2022','Una evento muy bueno',1,1,3),
('Evento 5','10/10/2022','Una evento muy bueno',1,1,3),
('Evento 6','10/10/2022','Una evento muy bueno',1,1,3),
('Evento 7','10/10/2022','Una evento muy bueno',1,1,3),
('Evento 8','10/10/2022','Una evento muy bueno',1,1,3),
('Evento 9','10/10/2022','Una evento muy bueno',1,1,3),
('Evento 10','10/10/2022','Una evento muy bueno',1,1,3);

Insert into ExpedienteMedico(numExpedienteMedico,fecha,descripcion_ExpedienteMedico,estatus)
Values
(1,'10/10/2022','Expediente Medico ',1),
(2,'10/10/2022','Expediente Medico',1),
(3,'10/10/2022','Expediente Medico',1),
(4,'10/10/2022','Expediente Medico',1),
(5,'10/10/2022','Expediente Medico',1),
(6,'10/10/2022','Expediente Medicoo',1),
(7,'10/10/2022','Expediente Medico',1),
(8,'10/10/2022','Expediente Medico',1),
(9,'10/10/2022','Expediente Medico',1),
(10,'10/10/2022','Expediente Medico',1);

Insert into FacturaCliente(fecha,descripcion_FacturaCliente,estatus)
Values
('10/09/2022','una descripcion de la Factura del Cliente',1),
('11/10/2022','una descripcion de la Factura del Cliente',1),
('12/10/2022','una descripcion de la Factura del Cliente',1),
('13/10/2022','una descripcion de la Factura del Cliente',1),
('14/10/2022','una descripcion de la Factura del Cliente',1),
('15/10/2022','una descripcion de la Factura del Cliente',1),
('16/10/2022','una descripcion de la Factura del Cliente',1),
('17/10/2022','una descripcion de la Factura del Cliente',1),
('18/10/2022','una descripcion de la Factura del Cliente',1),
('25/11/2022','una descripcion de la Factura del Cliente',1);

Insert into FacturaProveedor(fecha,descripcion_FacturaProveedor,estatus)
Values
('10/09/2022','una descripcion de la Factura del Proveedor',1),
('11/10/2022','una descripcion de la Factura del Proveedor',1),
('12/10/2022','una descripcion de la Factura del Proveedor',1),
('13/10/2022','una descripcion de la Factura del Proveedor',1),
('14/10/2022','una descripcion de la Factura del Proveedor',1),
('15/10/2022','una descripcion de la Factura del Proveedor',1),
('16/10/2022','una descripcion de la Factura del Proveedor',1),
('17/10/2022','una descripcion de la Factura del Proveedor',1),
('18/10/2022','una descripcion de la Factura del Proveedor',1),
('25/11/2022','una descripcion de la Factura del Proveedor',1);

Insert into Farmacia(descripcion_Farmacia,estatus,IdMedicamento,IdArticulo,IdPagoCliente,IdCompraCliente)
Values
('Descripcion de la unidad medica',1,2,3,4,5),
('Descripcion de la unidad medica',1,3,5,8,2),
('Descripcion de la unidad medica',1,1,3,3,3),
('Descripcion de la unidad medica',1,10,9,4,7),
('Descripcion de la unidad medica',1,3,3,4,8),
('Descripcion de la unidad medica',1,4,8,4,7),
('Descripcion de la unidad medica',1,6,6,4,6),
('Descripcion de la unidad medica',1,7,2,4,2),
('Descripcion de la unidad medica',1,8,3,4,2),
('Descripcion de la unidad medica',1,9,3,4,1);

Insert into Habitacion(numHabitacion,descripcion_Habitacion,estatus)
Values
(1,'Habitacion en buenas condiciones',1),
(2,'Habitacion en buenas condiciones',1),
(3,'Habitacion en buenas condiciones',1),
(4,'Habitacion en buenas condiciones',1),
(5,'Habitacion en buenas condiciones',1),
(6,'Habitacion en buenas condiciones',1),
(7,'Habitacion en buenas condiciones',1),
(8,'Habitacion en buenas condiciones',1),
(9,'Habitacion en buenas condiciones',1),
(10,'Habitacion en buenas condiciones',1);

Insert into Horario(descripcion_Horario,horaApertura,horaCierre,estatus)
Values
('Horario',7,1,1),
('Horario',7,1,1),
('Horario',7,1,1),
('Horario',7,1,1),
('Horario',7,1,1),
('Horario',7,1,1),
('Horario',7,1,1),
('Horario',7,1,1),
('Horario',7,1,1),
('Horario',7,1,1);
Insert into Ingreso(numIngreso,fecha,estatus)
Values
(1,'01/11/2022',1),
(2,'02/12/2022',1),
(3,'03/12/2022',1),
(4,'04/12/2022',1),
(5,'05/12/2022',1),
(6,'06/12/2022',1),
(7,'07/12/2022',1),
(8,'08/12/2022',1),
(9,'09/12/2022',1),
(10,'10/12/2022',1);

Insert into Mantenimiento(fecha,descripcion_Mantenimiento,estatus)
Values
('01/11/2022','Mantenimiento correcto',1),
('02/12/2022','Mantenimiento incorrecto',1),
('03/12/2022','Mantenimiento correcto',1),
('04/12/2022','Mantenimiento correcto',1),
('05/12/2022','Mantenimiento correcto',1),
('06/12/2022','Mantenimiento correcto',1),
('07/12/2022','Mantenimiento correcto',1),
('08/12/2022','Mantenimiento correcto',1),
('09/12/2022','Mantenimiento correcto',1),
('10/12/2022','Mantenimiento correcto',1);

Insert into Medicamento(numMedicamento,nombreMedicamento,descripcion_Medicamento,estatus)
Values
(1,'Aspirina','Tome cada 8 hrs',1),
(2,'Paracetamol','Tome cada 8 hrs',1),
(3,'Naproxeno','Tome cada 12 hrs',1),
(4,'Omeprazol ','Tome cada 8 hrs',1),
(5,'Abiraterona','Tome cada 8 hrs',1),
(6,'Absorica','Tome cada 8 hrs',1),
(7,'Ramipril ','Tome cada 8 hrs',1),
(8,'Amlodipina ','Tome cada 8 hrs',1),
(9,'Simvastatina ','Tome cada 8 hrs',1),
(10,'Pepto','Tome cada 8 hrs',1);


INSERT INTO Paciente
(nombre,
apellidoPaterno,
apellidoMaterno,
fechaNacimiento,
CURP,
calle,
numero,
colonia,
ciudad,
estado,
codigoPostal
,telefono
,estatus
,IdEnfermedad,IdCitaMedica,IdCama,
IdAltaMedica,IdConsultaMedica,IdAnalisisMedico,
IdTratamiento,IdComida,IdRecetaMedica,
IdExpedienteMedico,IdCartillaSalud,IdIngreso)VALUES
('Max','Ramos','Duran','07/04/2000','MARA200714HS','Lomas','507','ZonaCentro','Monclova,','Coahuila','25750','8661234567',1,2,3,1,1,2,3,4,5,6,1,10,3),
('Luis','Sanchez','Esquivel','10/02/1994','MARA200714HR','Lomas','507','ZonaCentro','Monclova,','Coahuila','25750','8661234567',1,2,3,1,1,2,3,4,5,6,1,10,3),
('Carlos','Martinez','Zapata','01/05/1995','CAMA059501HE','Lomas','507','ZonaCentro','Monclova,','Coahuila','25750','8661234567',1,2,3,1,1,2,3,4,5,6,1,10,3),
('Pedro','Torres','Casillas','11/12/1996','PETO200714HA','Lomas','507','ZonaCentro','Monclova,','Coahuila','25750','8661234567',1,2,3,1,1,2,3,4,5,6,1,10,3),
('Alvaro','Lopez','Ledezma','17/03/1998','ALLO170398HX','Lomas','507','ZonaCentro','Monclova,','Coahuila','25750','8661234567',1,2,3,1,1,2,3,4,5,6,1,10,3),
('Brandon','Franco','Perales','01/04/2000','BRFR000401HP','Lomas','507','ZonaCentro','Monclova,','Coahuila','25750','8661234567',1,2,3,1,1,2,3,4,5,6,1,10,3),
('Camila','Mar','Palacios','04/07/1992','CAMA040792HL','Lomas','507','ZonaCentro','Monclova,','Coahuila','25750','8661234567',1,2,3,1,1,2,3,4,5,6,1,10,3),
('Pepe','Moreno','Gomez','06/03/1998','PEMO039806HJ','Lomas','507','ZonaCentro','Monclova,','Coahuila','25750','8661234567',1,2,3,1,1,2,3,4,5,6,1,10,3),
('Ronaldo','Zamora','Aguirre','07/03/1997','ROZA970703HSS','Lomas','507','ZonaCentro','Monclova,','Coahuila','25750','8661234567',1,2,3,1,1,2,3,4,5,6,1,10,3),
('Leo','Morales','Mares','01/01/1999','LEMO990164HS','Lomas','507','ZonaCentro','Monclova,','Coahuila','25750','8661234567',1,2,3,1,1,2,3,4,5,6,1,10,3);

Insert into PagoCliente(fecha,descripcion_PagoCliente,monto,estatus)
Values
('01/01/2022','Pago del cliente',30,1),
('01/01/2022','Pago del cliente',10,1),
('01/01/2022','Pago del cliente',9,1),
('01/01/2022','Pago del cliente',50.15,1),
('01/01/2022','Pago del cliente',30,1),
('01/01/2022','Pago del cliente',20,1),
('01/01/2022','Pago del cliente',15,1),
('01/01/2022','Pago del cliente',10.05,1),
('01/01/2022','Pago del cliente',36,1);


Insert into PagoUnidadMedica(fecha,descripcion_PagoUnidadMedica,monto,estatus,IdFacturaProveedor)
Values
('01/01/2022','Pago del cliente',30,1,1),
('02/01/2022','Pago del cliente',10,1,2),
('03/01/2022','Pago del cliente',9,1,3),
('04/01/2022','Pago del cliente',50.15,1,4),
('05/01/2022','Pago del cliente',30,1,4),
('06/01/2022','Pago del cliente',20,1,5),
('07/01/2022','Pago del cliente',15,1,6),
('08/01/2022','Pago del cliente',10.05,1,7),
('11/01/2022','Pago del cliente',10.05,1,7),
('09/01/2022','Pago del cliente',36,1,8);

Insert into Practicante(nombre,apellidoPaterno,apellidoMaterno,matricula,estatus)
VALUES
('Max','Ramos','Zapata','1205056',1),
('Carlos','Ramos','Palacios','1305056',1),
('Luis','Sanchez','Duran','1405056',1),
('Pedro','Garcia','Martinez','1505056',1),
('Hector','Gama','Aguirre','1605056',1),
('Juan','Gomez','Duran','1705056',1),
('Hugo','Lucio','Moreno','1805056',1),
('Enrique','Sanchez','Mares','1905056',1),
('Martin','Olmedo','Sanchez','1105056',1),
('Kevin','Socrates','Esquivel','1115056',1);

Insert into Proveedor(nombre,RFC,telefono,calle,numero,colonia,ciudad,estado,codigopostal,estado,IdFacturaProveedor)
Values
('Levic','LEVI589605HR','6325897','Independencia',505,'Monclova','Coahuila',203,1,3),
('Remik','REMIK69811HJ','6258927','Carranza',555,'Monclova','Coahuila',203,1,3),
('SAP','LEVI589605HR','6325897','Independencia',505,'Monclova','Coahuila',203,1,3),
('LOP','LOP6595264','6258927','Zapata',555,'Monclova','Coahuila',203,1,3),
('LILI','LILI589605HR','6335897','Bentura',566,'Monclova','Coahuila',203,1,3),
('RISK','RISK692611HJ','6258627','Hidalgo',100,'Monclova','Coahuila',203,1,3),
('EMAK','EMAK589455HR','6325997','Deportiva',626,'Monclova','Coahuila',203,1,3),
('PEDX','RPEDX12811HJ','62123657','Peralta',983,'Monclova','Coahuila',203,1,3),
('EMOK','EMO12355HO','6325997','Deportiva',626,'Monclova','Coahuila',203,1,3),
('PEDX','PEDX598765?P','62123657','Peralta',983,'Monclova','Coahuila',203,1,3);

Insert into RecetaMedica(numRecetaMedica,descripcion_RecetaMedica,estatus,IdMedicamento)
values
(1,'Descripcion de la receta medica',1,3),
(2,'Descripcion de la receta medica',1,4),
(3,'Descripcion de la receta medica',1,5),
(4,'Descripcion de la receta medica',1,7),
(5,'Descripcion de la receta medica',1,8),
(6,'Descripcion de la receta medica',1,9),
(7,'Descripcion de la receta medica',1,10),
(8,'Descripcion de la receta medica',1,2),
(9,'Descripcion de la receta medica',1,1),
(10,'Descripcion de la receta medica',1,9);

Insert into Reglamento(descripcion,estatus)
Values
('Esto es una descripcion del reglamento',1),
('Esto es una descripcion del reglamento',1),
('Esto es una descripcion del reglamento',1),
('Esto es una descripcion del reglamento',1),
('Esto es una descripcion del reglamento',1),
('Esto es una descripcion del reglamento',1),
('Esto es una descripcion del reglamento',1),
('Esto es una descripcion del reglamento',1),
('Esto es una descripcion del reglamento',1),
('Esto es una descripcion del reglamento',1);

Insert into Residencia(fechaIncio,fechaTermino,descripcion,estatus,IdPracticante)
Values
('10/01/2021','10/03/2021','Residencias',1,2),
('10/01/2022','10/03/2022','Residencias',1,1),
('10/03/2021','10/06/2022','Residencias',1,3),
('10/01/2021','10/03/2021','Residencias',1,4),
('10/01/2021','10/03/2021','Residencias',1,6),
('10/01/2021','10/03/2021','Residencias',1,5),
('10/01/2021','10/03/2021','Residencias',1,7),
('10/01/2021','10/03/2021','Residencias',1,9),
('10/01/2021','10/03/2021','Residencias',1,8),
('10/01/2021','10/03/2021','Residencias',1,10);

Insert into ServicioSanitario(fecha,descripcion_ServicioSanitario,estatus)
Values
('02/12/2022','Esto es una descripcion sobre el servicio',1),
('03/12/2022','Esto es una descripcion sobre el servicio',1),
('04/12/2022','Esto es una descripcion sobre el servicio',1),
('05/12/2022','Esto es una descripcion sobre el servicio',1),
('06/12/2022','Esto es una descripcion sobre el servicio',1),
('07/12/2022','Esto es una descripcion sobre el servicio',1),
('08/12/2022','Esto es una descripcion sobre el servicio',1),
('09/12/2022','Esto es una descripcion sobre el servicio',1),
('10/12/2022','Esto es una descripcion sobre el servicio',1),
('11/12/2022','Esto es una descripcion sobre el servicio',1);


Insert into ServicioSocial(fechaIncio,fechaTermino,descripcion,estatus,IdEstudiante)
Values
('10/01/2021','10/03/2021','ServicioSocial',1,2),
('10/01/2022','10/03/2022','ServicioSocial',1,1),
('10/01/2021','10/03/2021','ServicioSocial',1,5),
('10/01/2021','10/03/2021','ServicioSocial',1,7),
('10/03/2021','10/06/2022','ServicioSocial',1,3),
('10/01/2021','10/03/2021','ServicioSocial',1,4),
('10/01/2021','10/03/2021','ServicioSocial',1,6),
('10/01/2021','10/03/2021','ServicioSocial',1,9),
('10/01/2021','10/03/2021','ServicioSocial',1,8),
('10/01/2021','10/03/2021','ServicioSocial',1,10);

Insert into TipoDeArea(nombre,descripcion_TipoArea,estatus)
Values
('TipoDeArea 1', 'Descripcion sobre el tipo de area', 1),
('TipoDeArea 2', 'Descripcion sobre el tipo de area', 1),
('TipoDeArea 3', 'Descripcion sobre el tipo de area', 1),
('TipoDeArea 4', 'Descripcion sobre el tipo de area', 1),
('TipoDeArea 5', 'Descripcion sobre el tipo de area', 1),
('TipoDeArea 6', 'Descripcion sobre el tipo de area', 1),
('TipoDeArea 7', 'Descripcion sobre el tipo de area', 1),
('TipoDeArea 8', 'Descripcion sobre el tipo de area', 1),
('TipoDeArea 9', 'Descripcion sobre el tipo de area', 1),
('TipoDeArea 10', 'Descripcion sobre el tipo de area', 1);

Insert into TipoEnfermedad(nombre_TipoEnfermedad,descripcion,estatus)
Values
('TipoEnfermedad 1', 'Descripcion sobre el TipoEnfermedad', 1),
('TipoEnfermedad 2', 'Descripcion sobre el TipoEnfermedad', 1),
('TipoEnfermedad 3', 'Descripcion sobre el TipoEnfermedad', 1),
('TipoEnfermedad 4', 'Descripcion sobre el TipoEnfermedad', 1),
('TipoEnfermedad 5', 'Descripcion sobre el TipoEnfermedad', 1),
('TipoEnfermedad 6', 'Descripcion sobre el TipoEnfermedad', 1),
('TipoEnfermedad 7', 'Descripcion sobre el TipoEnfermedad', 1),
('TipoEnfermedad 8', 'Descripcion sobre el TipoEnfermedad', 1),
('TipoEnfermedad 9', 'Descripcion sobre el TipoEnfermedad', 1),
('TipoEnfermedad 10', 'Descripcion sobre el TipoEnfermedad', 1);

Insert into TransporteEmpleado(numTransporteEmpleado,estatus)
Values
(1,1),
(2,1),
(3,1),
(4,1),
(5,1),
(6,1),
(7,1),
(8,1),
(9,1),
(10,1);
Insert into Tratamiento(nombre,descripcion_Tratamiento,fechaIncio,fechaTermino,estatus)
Values
('Tratamiento # 1','Llevar correctamente el entrenamiento' ,'02/02/2022','17/02/2022',1),
('Tratamiento # 2','Llevar correctamente el entrenamiento' ,'02/03/2022','17/03/2022',1),
('Tratamiento # 3','Llevar correctamente el entrenamiento' ,'02/04/2022','17/04/2022',1),
('Tratamiento # 4','Llevar correctamente el entrenamiento' ,'02/05/2022','17/05/2022',1),
('Tratamiento # 5','Llevar correctamente el entrenamiento' ,'02/06/2022','17/06/2022',1),
('Tratamiento # 6','Llevar correctamente el entrenamiento' ,'02/07/2022','17/07/2022',1),
('Tratamiento # 7','Llevar correctamente el entrenamiento' ,'02/08/2022','17/08/2022',1),
('Tratamiento # 8','Llevar correctamente el entrenamiento' ,'02/09/2022','17/09/2022',1),
('Tratamiento # 9','Llevar correctamente el entrenamiento' ,'02/10/2022','17/10/2022',1),
('Tratamiento # 10','Llevar correctamente el entrenamiento' ,'02/11/2022','17/11/2022',1);

Insert into UnidadMedica(nombre,telefono,calle,
numero,colonia,ciudad,
estado,codigoPostal,estatus,IdEdificio,
IdEquipo,IdResidencia,IdServicioSanitario,
IdAlmacen,IdPagoUnidadMedica,IdEmpleado,
IdReglamento,IdAsamblea,IdEvento,
IdVisita,IdHorario,IdServicioSocial,
IdCliente,IdAmbulancia,IdFacturaCliente)
Values
('Unidad1','86612345','ZonaHidalgo','Coahuila',50000,1,1,2,3,4,5,6,7,8,9,10,1,2,3);

Insert into Visita(horaInicial,horafinal,numPaseVisita,estatus,IdHorario)
Values
('10:30','10:36',1,1,2);

--LLaves Foraneas--

--Alter Table UnidadMedica-PagoUnidadMedica
ALTER TABLE UnidadMedica
ADD CONSTRAINT FkPagoUnidadMedica FOREIGN KEY (IdPagoUnidadMedica) REFERENCES PagoUnidadMedica (IdPagoUnidadMedica)
--Alter Table UnidadMedica-Edificio
ALTER TABLE UnidadMedica
ADD CONSTRAINT fkEdificio FOREIGN KEY (IdEdificio) REFERENCES Edificio (IdEdificio)
--Alter Table UnidadMedica-Equipo
ALTER TABLE UnidadMedica
ADD CONSTRAINT fkEquipo FOREIGN KEY (IdEquipo) REFERENCES Equipo (IdEquipo)
--Alter Table UnidadMedica-Residencia
ALTER TABLE UnidadMedica
ADD CONSTRAINT fkResidencia FOREIGN KEY (IdResidencia) REFERENCES Residencia (IdResidencia)
--Alter Table UnidadMedica-ServicioSanitario
ALTER TABLE UnidadMedica
ADD CONSTRAINT fk_ServicioSanitario_UnidadMedica FOREIGN KEY (IdServicioSanitario) REFERENCES ServicioSanitario (IdServicioSanitario)
--Alter Table UnidadMedica-Almacen
ALTER TABLE UnidadMedica
ADD CONSTRAINT fkAlmacen FOREIGN KEY (IdAlmacen) REFERENCES Almacen (IdAlmacen)
--Alter Table UnidadMedica-Empleado
ALTER TABLE UnidadMedica
ADD CONSTRAINT fkEmpleado FOREIGN KEY (IdEmpleado) REFERENCES Empleado (IdEmpleado)
--Alter Table UnidadMedica-Reglamento
ALTER TABLE UnidadMedica
ADD CONSTRAINT fkReglamento_UnidadMedica FOREIGN KEY (IdReglamento) REFERENCES Reglamento (IdReglamento)
--Alter Table UnidadMedica-Asamblea
ALTER TABLE UnidadMedica
ADD CONSTRAINT fkAsamblea_UnidadMedica FOREIGN KEY (IdAsamblea) REFERENCES Asamblea (IdAsamblea)
--Alter Table UnidadMedica-Evento
ALTER TABLE UnidadMedica
ADD CONSTRAINT fkEvento_UnidadMedica FOREIGN KEY (IdEvento) REFERENCES Evento (IdEvento)
--Alter Table UnidadMedica-Visita
ALTER TABLE UnidadMedica
ADD CONSTRAINT fkVisita_UnidadMedica FOREIGN KEY (IdVisita) REFERENCES Visita (IdVisita)
--Alter Table UnidadMedica-Horario
ALTER TABLE UnidadMedica
ADD CONSTRAINT fkHorario_UnidadMedica FOREIGN KEY (IdHorario) REFERENCES Horario (IdHorario)
--Alter Table UnidadMedica-ServicioSocial
ALTER TABLE UnidadMedica
ADD CONSTRAINT fkServicioSocial_UnidadMedica FOREIGN KEY (IdServicioSocial) REFERENCES ServicioSocial (IdServicioSocial)
--Alter Table UnidadMedica-Cliente
ALTER TABLE UnidadMedica
ADD CONSTRAINT fkCliente_UnidadMedica FOREIGN KEY (IdCliente) REFERENCES Cliente (IdCliente)
--Alter Table UnidadMedica-Ambulancia
ALTER TABLE UnidadMedica
ADD CONSTRAINT fkAmbulancia_UnidadMedica FOREIGN KEY (IdAmbulancia) REFERENCES Ambulancia (IdAmbulancia)
--Alter Table UnidadMedica-FacturaCliente
ALTER TABLE UnidadMedica
ADD CONSTRAINT fkFacturaCliente_UnidadMedica FOREIGN KEY (IdFacturaCliente) REFERENCES FacturaCliente (IdFacturaCliente)


-- Asamblea--IdHorario 
ALTER TABLE Asamblea
ADD CONSTRAINT fkAsamblea_Horario FOREIGN KEY (IdHorario) REFERENCES Horario (IdHorario)


--Edificio -- Elevador
ALTER TABLE Area
ADD CONSTRAINT fkTipoDeArea FOREIGN KEY (IdTipoDeArea) REFERENCES TipoDeArea (IdTipoDeArea)

--CartillaSalud --IdCitaMedica 
ALTER TABLE CartillaSalud
ADD CONSTRAINT Fk_CartillaSalud FOREIGN KEY (IdCitaMedica) REFERENCES CitaMedica (IdCitaMedica)

--CedulaMedica --Especialidad 
ALTER TABLE CedulaMedica
ADD CONSTRAINT fkEspecialidad FOREIGN KEY (IdEspecialidad) REFERENCES Especialidad (IdEspecialidad)


--Cliente -- CompraCliente
ALTER TABLE Cliente
ADD CONSTRAINT fkCompra_Cliente FOREIGN KEY (IdCompraCliente) REFERENCES CompraCliente (IdCompraCliente)

--Cliente -- PagoCliente
ALTER TABLE Cliente
ADD CONSTRAINT fkCliente_PagoCliente FOREIGN KEY (IdPagoCliente) REFERENCES PagoCliente (IdPagoCliente)

--Cliente --IdFacturaCliente 
ALTER TABLE Cliente
ADD CONSTRAINT fkFacturaCliente FOREIGN KEY (IdFacturaCliente) REFERENCES FacturaCliente (IdFacturaCliente)

--CompraUnidadMedica -- Articulo 
ALTER TABLE CompraUnidadMedica
ADD CONSTRAINT fkCompra_Articulo FOREIGN KEY (IdArticulo) REFERENCES Articulo (IdArticulo)


--Edificio -- Elevador
ALTER TABLE Edificio
ADD CONSTRAINT fkReglamento FOREIGN KEY (IdReglamento) REFERENCES Reglamento (IdReglamento)
--Edificio -- Elevador
ALTER TABLE Edificio
ADD CONSTRAINT fkArea_Edificio FOREIGN KEY (IdArea) REFERENCES Area (IdArea)
--Edificio -- Elevador
ALTER TABLE Edificio
ADD CONSTRAINT fkElevador FOREIGN KEY (IdElevador) REFERENCES Elevador (IdElevador)
--Edificio -- Farmacia
ALTER TABLE Edificio
ADD CONSTRAINT fkFarmacia FOREIGN KEY (IdFarmacia) REFERENCES Farmacia (IdFarmacia)
--Edificio -- Habitacion
ALTER TABLE Edificio
ADD CONSTRAINT fkHabitacion FOREIGN KEY (IdHabitacion) REFERENCES Habitacion (IdHabitacion)
--Edificio -- Area
ALTER TABLE Edificio
ADD CONSTRAINT fkArea FOREIGN KEY (IdArea) REFERENCES Area (IdArea)



--Alter Table Empleado
--Empleado-CompraUnidadMedica
ALTER TABLE Empleado
ADD CONSTRAINT fkCompraUnidadMedica_Empleado FOREIGN KEY (IdCompraUnidadMedica) REFERENCES CompraUnidadMedica (IdCompraUnidadMedica)
--Empleado-ConsultaMedica
ALTER TABLE Empleado
ADD CONSTRAINT fkConsultaMedica_Empledo FOREIGN KEY (IdConsultaMedica) REFERENCES ConsultaMedica (IdConsultaMedica)
--Empleado-AnalisisMedico
ALTER TABLE Empleado
ADD CONSTRAINT fk_AnalisisMedico_Empleado FOREIGN KEY (IdAnalisisMedico) REFERENCES AnalisisMedico (IdAnalisisMedico)
--Empleado-Tratamiento
ALTER TABLE Empleado
ADD CONSTRAINT fkTratamiento_Empleado FOREIGN KEY (IdTratamiento) REFERENCES Tratamiento (IdTratamiento)
--Empleado-Comida
ALTER TABLE Empleado
ADD CONSTRAINT fkComida_Empleado FOREIGN KEY (IdComida) REFERENCES Comida (IdComida)
--Empleado-RecetaMedica
ALTER TABLE Empleado
ADD CONSTRAINT fkRecetaMedica_Empleado FOREIGN KEY (IdRecetaMedica) REFERENCES RecetaMedica (IdRecetaMedica)
--Empleado-ClinicaMedica
ALTER TABLE Empleado
ADD CONSTRAINT fkClinicaMedica FOREIGN KEY (IdClinicaMedica) REFERENCES ClinicaMedica (IdClinicaMedica)
--Empleado-CedulaMedica
ALTER TABLE Empleado
ADD CONSTRAINT fkCedulaMedica FOREIGN KEY (IdCedulaMedica) REFERENCES CedulaMedica (IdCedulaMedica)
--Empleado-Cirugia
ALTER TABLE Empleado
ADD CONSTRAINT fkCirugia FOREIGN KEY (IdCirugia) REFERENCES Cirugia (IdCirugia)
--Empleado-Asamblea
ALTER TABLE Empleado
ADD CONSTRAINT fkAsamblea FOREIGN KEY (IdAsamblea) REFERENCES Asamblea (IdAsamblea)
--Empleado-TransporteEmpleado
ALTER TABLE Empleado
ADD CONSTRAINT fkTransporteEmpleado FOREIGN KEY (IdTransporteEmpleado) REFERENCES TransporteEmpleado (IdTransporteEmpleado)
--Empleado-Mantenimiento
ALTER TABLE Empleado
ADD CONSTRAINT fkMantenimiento FOREIGN KEY (IdMantenimiento) REFERENCES Mantenimiento (IdMantenimiento)
--Enfermedad-TipoEnfermedad
ALTER TABLE Enfermedad
ADD CONSTRAINT fkTipoDeEnfermedad FOREIGN KEY (IdTipoEnfermedad) REFERENCES TipoEnfermedad (IdTipoEnfermedad)

-- Evento--IdHorario 
ALTER TABLE Evento
ADD CONSTRAINT fkEvento_Horario FOREIGN KEY (IdHorario) REFERENCES Horario (IdHorario)
-- Evento--Asamblea 
ALTER TABLE Evento
ADD CONSTRAINT fkEvento_Asamblea FOREIGN KEY (IdAsamblea) REFERENCES Asamblea (IdAsamblea)


--Farmacia -- Medicamento
ALTER TABLE Farmacia
ADD CONSTRAINT fk_Medicamento FOREIGN KEY (IdMedicamento) REFERENCES Medicamento (IdMedicamento)
--Farmacia -- Articulo
ALTER TABLE Farmacia
ADD CONSTRAINT fkArticulo FOREIGN KEY (IdArticulo) REFERENCES Articulo (IdArticulo)
--Farmacia -- PagoCliente
ALTER TABLE Farmacia
ADD CONSTRAINT fkFarmacia_PagoCliente FOREIGN KEY (IdPagoCliente) REFERENCES PagoCliente (IdPagoCliente)

--Farmacia -- CompraCliente
ALTER TABLE Farmacia
ADD CONSTRAINT fkFarmacia_CompraCliente FOREIGN KEY (IdCompraCliente) REFERENCES CompraCliente (IdCompraCliente)

--Alter Table Paciente
--Paciente -ConsultaMedica
ALTER TABLE Paciente
ADD CONSTRAINT fkConsultaMedica FOREIGN KEY (IdConsultaMedica) REFERENCES ConsultaMedica (IdConsultaMedica)
--Paciente -AnalisisMedico
ALTER TABLE Paciente
ADD CONSTRAINT fkAnalisMedico FOREIGN KEY (IdAnalisisMedico) REFERENCES AnalisisMedico (IdAnalisisMedico)
--Paciente -Tratamiento
ALTER TABLE Paciente
ADD CONSTRAINT fkTratamiento FOREIGN KEY (IdTratamiento) REFERENCES Tratamiento (IdTratamiento)
--Paciente -Comida
ALTER TABLE Paciente
ADD CONSTRAINT fkComida FOREIGN KEY (IdComida) REFERENCES Comida (IdComida)
--Paciente -RecetaMedica
ALTER TABLE Paciente
ADD CONSTRAINT fkRecetaMedica FOREIGN KEY (IdRecetaMedica) REFERENCES RecetaMedica (IdRecetaMedica)
--Paciente -CartillaSalud
ALTER TABLE Paciente
ADD CONSTRAINT fkCartillaSalud FOREIGN KEY (IdCartillaSalud) REFERENCES CartillaSalud (IdCartillaSalud)
--Paciente -Ingreso
ALTER TABLE Paciente
ADD CONSTRAINT fkIngreso FOREIGN KEY (IdIngreso) REFERENCES Ingreso (IdIngreso)
--Paciente -Cama
ALTER TABLE Paciente
ADD CONSTRAINT fkCama FOREIGN KEY (IdCama) REFERENCES Cama (IdCama)
--Paciente -AltaMedica
ALTER TABLE Paciente
ADD CONSTRAINT fkAltaMedica FOREIGN KEY (IdAltaMedica) REFERENCES AltaMedica (IdAltaMedica)
--Paciente -Enfermedad
ALTER TABLE Paciente
ADD CONSTRAINT fkEnfermedad FOREIGN KEY (IdEnfermedad) REFERENCES Enfermedad (IdEnfermedad)
--Paciente -CitaMedica
ALTER TABLE Paciente
ADD CONSTRAINT fkCitaMedica FOREIGN KEY (IdCitaMedica) REFERENCES CitaMedica (IdCitaMedica)
--Paciente -ExpedienteMedico
ALTER TABLE Paciente
ADD CONSTRAINT fkExpedienteMedico FOREIGN KEY (IdExpedienteMedico) REFERENCES ExpedienteMedico (IdExpedienteMedico)
--PagoUnidadMedica -Proveedor
ALTER TABLE PagoUnidadMedica
ADD CONSTRAINT fk_PagoUnidad_Proveedor FOREIGN KEY (IdProveedor) REFERENCES Proveedor (IdProveedor)

-- Proveedor--FacturaProveedor 
ALTER TABLE Proveedor
ADD CONSTRAINT fkFactura_Proveedor FOREIGN KEY (IdFacturaProveedor) REFERENCES FacturaProveedor (IdFacturaProveedor)
-- RecetaMedica--Medicamento 
ALTER TABLE Farmacia
ADD CONSTRAINT fkMedicamento FOREIGN KEY (IdMedicamento) REFERENCES Medicamento (IdMedicamento)
-- Residencia--Practicante 
ALTER TABLE Residencia
ADD CONSTRAINT fkPracticante FOREIGN KEY (IdPracticante) REFERENCES Practicante (IdPracticante)

-- Residencia--Practicante 
ALTER TABLE ServicioSocial
ADD CONSTRAINT fkEstudiante FOREIGN KEY (IdEstudiante) REFERENCES Estudiante (IdEstudiante)

-- Visita--IdHorario 
ALTER TABLE Visita
ADD CONSTRAINT fkHorario FOREIGN KEY (IdHorario) REFERENCES Horario (IdHorario)