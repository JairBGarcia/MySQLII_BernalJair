-- ##########################
-- ##### DIA 4 - MYSQL2 #####
-- ##########################

SHOW DATABASES;
CREATE DATABASE mysql2_dia4;
USE mysql2_dia4;

-- Creación de usuarios con acceso desde cualquier parte 
CREATE USER 'camper'@'%' IDENTIFIED BY 'campus2023';

-- Revisar permisos de x usuario
SHOW GRANTS FOR 'camper'@'%';

-- Crear una tabla de personas 
CREATE TABLE persona (
	id INT PRIMARY KEY, 
    nombre VARCHAR(255),
    apellido VARCHAR(255)
);

insert into persona (id,nombre,apellido) values (1,'Jair','Bernal');
insert into persona (id,nombre,apellido) values (2,'Andres','Perez');
insert into persona (id,nombre,apellido) values (3,'Sofia','Gomez');
insert into persona (id,nombre,apellido) values (4,'Kennet','Ceballos');
insert into persona (id,nombre,apellido) values (5,'Klisman','Fuentes');
insert into persona (id,nombre,apellido) values (6,'Cristiano','Ronaldo');
insert into persona (id,nombre,apellido) values (7,'Leo','Messi');
insert into persona (id,nombre,apellido) values (8,'James','Rodriguez');
insert into persona (id,nombre,apellido) values (9,'Bad','Bunny');
insert into persona (id,nombre,apellido) values (10,'Jaime','Mora');



-- Asignar permisos a x usuario para que acceda a la tabla y BBDD
grant select on mysql2_dia4.persona to 'camper'@'%';

-- Refrescar permisos de la BBDD
FLUSH PRIVILEGES;

-- Añadir permiso para hacer CRUD
grant update,insert,delete on mysql2_dia4.persona TO 'camper'@'%';

-- PELIGROSO: CREAR UN USUARIO CON PERMISOS A TODO DESDE CUALQUIER
--  LADO CON MALA CONTRASEÑA
create user'todito'@'%' identified by 'todito';
grant all on *.* to 'todito'@'%';
show grants for 'todito'@'%';

-- DENEGAR TODOS LOS PERMISOS
REVOKE ALL PRIVILEGES ON *.* FROM 'todito'@'%';


-- CREAR UN USUARIO CON ACCESO UNICO DESDE UNA IP ESTABLECIDA
create user 'deivid'@'172.16.102.30' identified by 'deivid123';
grant select,update,insert,delete on mysql2_dia4.persona to 'deivid'@'172.16.102.30';

-- Crear un usuario con acceso desde cualquier parte
create user 'deivid'@'172.16.102.30' identified by 'deivid123';
grant select on mysql2_dia4.persona to 'deivid'@'%';

-- Crear un limite para que solamente se hagan x consultas por hora
alter user 'camper'@'%' with MAX_QUERIES_PER_HOUR 5;
FLUSH PRIVILEGES;

-- Revisar los limites o permisos que tiene un usuario a nivel de motor
select * from mysql.user;
select * from mysql.user where host = '%';

-- elimiar usuarios
drop user 'todito'@'%';

-- 	REVOCAR TODOS LOS PERMISOS DE CAMPER
REVOKE ALL ON *.* FROM 'camper'@'%';

-- Solo poner permisos para que consulte una X base de datos,
--  una Y tabla y una Z colimna
grant select (nombre) on mysql2_dia4.persona to 'camper'@'%';

-- REALIZADO POR PAULA MUÑOZ /ID.1.095.953.057 