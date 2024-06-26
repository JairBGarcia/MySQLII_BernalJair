-- #################################
-- ######## DIA5 - mysql2 ##########
-- #################################

use world;

select * from city;
-- Trigger para insertar o actualizar una ciudad pais con
-- la nueva poblacion
delimiter //
create trigger after_city_insert_update
after insert on city
for each row 
begin
	update country
    set Population = Population + NEW.Population
    where code = NEW.CountryCode;
end //
delimiter ;

-- test 
insert into city (Name,CountryCode,District,Population) 
values ("Artemis","AFG","Piso 6","1250000");

-- Trigger para insertar o actualizar una ciudad pais con
-- la nueva poblacion
delimiter //
create trigger after_city_insert_update
after delete on city
for each row 
begin
	update country
    set Population = Population + OLD.Population
    where code = OLD.CountryCode;
end //
delimiter ;

select * from city where name = "Artemis";
delete from city where ID = 4080;

 -- Crear una tabla para auditoria de ciudad
 create table if not exists city_audit(
	audit_id int auto_increment primary key,
    city_id int,
    action varchar(10),
    old_popilation int,
    new_population int,
    change_time timestamp default current_timestamp
 );
 
 -- Trigger para auditoria de ciudades cuando se inserta
 delimiter //
 create trigger after_city_insert_audit
 after insert on city
 for each row
 begin
	insert into city_audit(city_id,action,new_population)
    values (NEW.ID,'INSERT', NEW.Population);
 end //
 delimiter ;
 
 select * from country;
 
 insert into city (Name,CountryCode,District,Population) 
values ("Artemis","AFG","Piso 6","1250000");

 -- Trigger para auditoria de ciudades cuando se inserta
 delimiter //
 create trigger after_city_insert_audit
 after update on city
 for each row
 begin
	insert into city_audit(city_id,action,old_population,new_population)
    values (OLD.ID,'UPDATE',OLD.Population ,NEW.Population);
 end //
 delimiter ;
 -- test
 update city set Population = 1550000 where ID = 4081;
 select * from city_audit;
 
 -- EVENTOS
 -- Creacion de tabla para BK de ciudades
 create table if not exists city_backup(
	ID int not null,
    Name char(35) not null,
    CountryCode char(3) not null,
    District char(20) not null,
    Population int not null,
    Primary key (ID)
 )engine=InnoDB default charset=utf8mb4;
 
 delimiter //
 create event if not exists weekly_city_backup
on schedule every 1 week 
Do 
begin
	truncate table city_backup;
    insert into city_backup(ID,Name,countryCode,District,Population)
    select ID, Name, Country,District,Population from city;
end //
delimiter ;