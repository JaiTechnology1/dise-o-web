-- phpMyAdmin SQL Dump
-- https://www.phpmyadmin.net/
--
-- Database: `tienda_unid`
--

create database Jai1;
use Jai1;

create table Usuarios (
id_Usuarios int Not Null,
login varchar(30),
nombre varchar(30),
apellido varchar(30),
correo varchar (30),
primary key (id_Usuarios)
);


Select * From Usuarios;

Create table Telefonos(
id_Usuarios int NOT NULL,
Telefono int(10)
);
SELECT * FROM Telefonos;
ALTER TABLE Telefonos ADD PRIMARY KEY (id_Usuarios);
ALTER TABLE Telefonos ADD FOREIGN KEY (id_Usuarios) references Usuarios(id_Usuarios);

Create table Producto(
Id_Producto int Not null,
Descripcion varchar(50),
Stock int (10)
);

SELECT * FROM Producto;

Alter table Producto Add Primary key (Id_Producto);


Create Table Bulto(
Id_Bulto int Not NULL,
peso_kg DECIMAL(11),
volumen_litros Decimal(11)
);
SELECT * FROM Bulto;
Alter table Bulto Add Primary Key(Id_Bulto);

Create table Paquete(
Id_Bulto int  Not null,
DireccionDeEnvio varchar(20),
PRIMARY KEY (Id_Bulto),
FOREIGN KEY (Id_Bulto) REFERENCES Bulto (Id_Bulto)
);


Select * from Paquete;

CREATE TABLE Funcionarios(
id_Usuario int Not null,
salario DECIMAL(20),
PRIMARY KEY (id_Usuario)
);
ALTER TABLE Funcionarios ADD FOREIGN KEY (id_Usuario) REFERENCES Usuarios (id_Usuarios);

SELECT * FROM Funcionarios;


CREATE TABLE Almaceneros(
Id_Usuario int NOT NULL,
PRIMARY KEY (id_Usuario)
);
ALTER TABLE Almaceneros ADD FOREIGN KEY (Id_Usuario) REFERENCES Funcionarios (id_Usuario);

SELECT * FROM Almaceneros;

CREATE TABLE Administrativos(
id_Usuario int NOT NULL,
PRIMARY KEY (id_Usuario)
);

ALTER TABLE Administrativos ADD FOREIGN KEY (id_Usuario) REFERENCES Funcionarios (id_Usuario);

SELECT * FROM Administrativos;

CREATE TABLE Chofer(
id_Usuario int NOT NULL,
PRIMARY KEY (id_Usuario)
);

ALTER TABLE Chofer ADD FOREIGN KEY (id_Usuario) REFERENCES Funcionarios (id_Usuario);

SELECT * FROM Chofer;

CREATE TABLE Cliente(
id_Usuario int NOT NULL
);
ALTER TABLE Cliente ADD PRIMARY KEY (id_Usuario);

ALTER TABLE Cliente ADD FOREIGN KEY (id_Usuario) REFERENCES Usuarios (id_Usuarios);

SELECT * FROM Cliente;

CREATE TABLE ClienteSigueBulto(
id_Usuario int NOT NULL,
Id_Bulto int(20) NOT NULL,
Destinatario varchar(20)
);

SELECT * FROM ClienteSigueBulto;
ALTER TABLE ClienteSigueBulto ADD PRIMARY KEY (id_Usuario,Id_Bulto);
ALTER TABLE ClienteSigueBulto ADD FOREIGN KEY (id_Usuario) REFERENCES Cliente (id_Usuario);
ALTER TABLE ClienteSigueBulto ADD FOREIGN KEY (Id_Bulto) REFERENCES Bulto (Id_Bulto);

CREATE TABLE AlmaceneroGestionaBulto(
id_Usuario int NOT NULL,
Id_Bulto int NOT NULL,
volumenLitros double,
pesokg double,
PRIMARY KEY (id_Usuario,Id_Bulto)
);
SELECT * FROM AlmaceneroGestionaBulto;

ALTER TABLE AlmaceneroGestionaBulto ADD FOREIGN KEY (id_Usuario) REFERENCES Funcionarios (id_Usuario);
ALTER TABLE AlmaceneroGestionaBulto ADD FOREIGN KEY (Id_Bulto) REFERENCES Bulto (Id_Bulto);



CREATE TABLE Camion(
id_camion int NOT NULL,
potencia int (20),
Primary key (id_camion)
);

SELECT * FROM Camion;

CREATE TABLE Modelo(
id_modelo int NOT NULL,
Nombre varchar (30),
PRIMARY KEY (id_modelo)
);

SELECT * FROM Modelo;

CREATE TABLE  Bulto_Almacen(
id_Bulto int NOT NULL,
PRIMARY KEY (id_Bulto)
);

SELECT * FROM Bulto_Almacen;

CREATE TABLE Almacen(
Id_Almacen int Not Null,
Capacidad int(30),
PRIMARY KEY (Id_Almacen)
);

SELECT * FROM Almacen;

CREATE TABLE CamionRecogePaquete(
id_camion int NOT NULL,
Id_Almacen int NOT NULL,
PRIMARY KEY (id_Camion,Id_Almacen),
FOREIGN KEY (id_camion) REFERENCES Camion (id_camion),
FOREIGN KEY (Id_Almacen) REFERENCES Almacen (Id_Almacen)
);

SELECT * FROM CamionRecogePaquete;


create user Angel identified by '1234';
grant all privileges on jai1 to Angel;



GRANT SELECT, INSERT, UPDATE, DELETE ON nombre_basededatos.tabla TO 'nombre_usuario';
