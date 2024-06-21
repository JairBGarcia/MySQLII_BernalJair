use TrabajoDia2;
-- #############################
-- ######### CONSULTAS #########
-- #############################
-- Consultas sobre una tabla

use TrabajoDia2;

-- 1.Lista el primer apellido de todos los empleados.
    delimiter //
    create procedure eje1()
    begin
    select apellido1
from empleado;
    end //
    delimiter ;
    call eje1();

-- 2.Lista el primer apellido de los empleados eliminando los apellidos que estén repetidos.
    delimiter //
    create procedure eje2()
    begin
select distinct apellido1
from empleado;
    end //
    delimiter ;
call eje2();

-- 3.Lista todas las columnas de la tabla empleado.
    delimiter //
    create procedure eje3()
    begin
select *
from empleado;
    end //
    delimiter ;
    call eje3();

-- 4.Lista el nombre y los apellidos de todos los empleados.
    delimiter //
    create procedure eje4()
    begin
select nombre, apellido1 as apellido, apellido2 as segundo_apellido
from empleado;
    end //
    delimiter ;
    call eje4();
    
-- 5.Lista el identificador de los departamentos de los empleados que aparecen en la tabla empleado
    delimiter //
    create procedure eje5()
    begin
select id_departamento 
from empleado;
    end //
    delimiter ;
call eje5();

-- 6.Lista el identificador de los departamentos de los empleados que aparecen
-- en la tabla empleado, eliminando los identificadores que aparecen repetidos.
    delimiter //
    create procedure eje6()
    begin
    select distinct id_departamento
from empleado;
    end //
    delimiter ;
    call eje6();

-- 7.Lista el nombre y apellidos de los empleados en una única columna.
    delimiter //
    create procedure eje7()
    begin
    select CONCAT(nombre, ' ', apellido1, ' ', apellido2) as nombre_completo 
from empleado;
    end //
    delimiter ;
call eje7();

-- 8.Lista el nombre y apellidos de los empleados en una única columna,
-- convirtiendo todos los caracteres en mayúscula.
    delimiter //
    create procedure eje8()
    begin
    select ucase(concat(nombre, ' ', apellido1, '' , apellido2)) as nombre_completo
from empleado;
    end //
    delimiter ;
call eje8();

-- 9.Lista el nombre y apellidos de los empleados en una única columna,
-- convirtiendo todos los caracteres en minúscula.
    delimiter //
    create procedure eje9()
    begin
    select lower(concat(nombre, ' ', apellido1, ' ' , apellido2)) as nombre_complete
from empleado;
    end //
    delimiter ;
call eje9();

-- 10.Lista el identificador de los empleados junto al nif, pero el nif deberá
	-- aparecer en dos columnas, una mostrará únicamente los dígitos del nif y la
	-- otra la letra.
    delimiter //
    create procedure eje10()
    begin
    	select id, 
		left(nif, LENGTH(nif) - 1) as nif_digitos, 
		right(nif, 1) as nif_letra 
		from empleado;
    end //
    delimiter ;
call eje10();

	-- 11.Lista el nombre de cada departamento y el valor del presupuesto actual del
	-- que dispone. Para calcular este dato tendrá que restar al valor del
	-- presupuesto inicial (columna presupuesto) los gastos que se han generado
	-- (columna gastos). Tenga en cuenta que en algunos casos pueden existir
	-- valores negativos. Utilice un alias apropiado para la nueva columna columna
	-- que está calculando.
delimiter //

create procedure eje11()
begin
    select nombre as Nombre_Departamento,
           case 
               when (presupuesto - gastos) >= 0 then (presupuesto - gastos)
               else 0
           end as Presupuesto_Disponible,
           case 
               when (presupuesto - gastos) < 0 then (presupuesto - gastos)
               else 0
           end as Presupuesto_Negativo
    from departamento;
end //
delimiter ;
call eje11();

	-- 12.Lista el nombre de los departamentos y el valor del presupuesto actual
	-- ordenado de forma ascendente.
    delimiter //
    create procedure eje12()
    begin
    	select nombre, presupuesto - gastos as presupuesto_actual
		from departamento
		order by presupuesto_actual asc;
    end //
    delimiter ;
    call eje12();

	-- 13.Lista el nombre de todos los departamentos ordenados de forma
	-- ascendente.
    delimiter //
    create procedure eje13()
    begin
    	select nombre
		from departamento
		order by nombre asc;
    end //
    delimiter ;
    call eje13();

	-- 14.Lista el nombre de todos los departamentos ordenados de forma
	-- descendente.
    delimiter //
    create procedure eje14()
    begin
    	select nombre
		from departamento
		order by nombre desc;
    end //
    delimiter ;
call eje14();

	-- 15.Lista los apellidos y el nombre de todos los empleados, ordenados de forma
	-- alfabética tendiendo en cuenta en primer lugar sus apellidos y luego su
	-- nombre.
    delimiter //
    create procedure eje15()
    begin
    	select apellido1 as apellido, apellido2 as segundo_apellido , nombre 
		from empleado
		order by apellido1, apellido2, nombre;
    end //
    delimiter ;
    call eje15();

	-- 16.Devuelve una lista con el nombre y el presupuesto, de los 3 departamentos
	-- que tienen mayor presupuesto.
    delimiter //
    create procedure eje16()
    begin
    	select nombre, presupuesto 
		from departamento 
		order by presupuesto desc
		limit 3;
    end //
    delimiter ;
    call eje16();
    

