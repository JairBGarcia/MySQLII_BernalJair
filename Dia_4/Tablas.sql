create database AutoRental;

use AutoRental;


create table Sucursales (
    id int primary key auto_increment,
    ciudad varchar(100),
    direccion varchar(255),
    telefono_fijo varchar(20),
    celular varchar(20),
    correo_electronico varchar(100)
);

create table Empleados (
    id int primary key auto_increment,
    sucursal_id int,
    cedula varchar(20) unique,
    nombres varchar(100),
    apellidos varchar(100),
    direccion varchar(255),
    ciudad_residencia varchar(100),
    celular varchar(20),
    correo_electronico varchar(100),
    foreign key (sucursal_id) references Sucursales(id)
);

create table Clientes (
    id int primary key auto_increment,
    cedula varchar(20) unique,
    nombres varchar(100),
    apellidos varchar(100),
    direccion varchar(255),
    ciudad_residencia varchar(100),
    celular varchar(20),
    correo_electronico varchar(100)
);


create table Vehiculos (
    id int primary key auto_increment,
    tipo_vehiculo varchar(50),
    placa varchar(20) unique,
    referencia varchar(100),
    modelo int,
    puertas int,
    capacidad int,
    sunroof boolean,
    motor varchar(50),
    color varchar(50)
);

create table Alquileres (
    id int primary key auto_increment,
    vehiculo_id int,
    cliente_id int,
    empleado_id int,
    sucursal_salida_id int,
    fecha_salida date,
    sucursal_llegada_id int,
    fecha_llegada date,
    fecha_esperada_llegada date,
    valor_alquiler_semana decimal(10, 2),
    valor_alquiler_dia decimal(10, 2),
    porcentaje_descuento decimal(5, 2),
    valor_cotizado decimal(10, 2),
    valor_pagado decimal(10, 2),
    foreign key (vehiculo_id) references Vehiculos(id),
    foreign key (cliente_id) references Clientes(id),
    foreign key (empleado_id) references Empleados(id),
    foreign key (sucursal_salida_id) references Sucursales(id),
    foreign key (sucursal_llegada_id) references Sucursales(id)
);