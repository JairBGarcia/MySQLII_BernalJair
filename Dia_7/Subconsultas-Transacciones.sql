-- ##############################
-- ###### DIA 7 - MySQL 2  ######
-- ##############################

use world;

-- SUBCONSULTAS: Se usan para realizar operaciones que requieren un conjunto de datos que se obtiene
-- de manera dinamica atravesa de otra consulta

-- Subconsultas escalar: toda subconsulta devuelve un solo valor(fila y columna)alter
-- ej: devuelve el nombre de pais con mayor poblacion
select name
from city
where Population = (select max(Population) from city);
-- Subconsulta de columna unica: devuelve una columna de multiples filas
-- ej: listar ciudades con la misma poblacion que la capital japon
select Name
from city
where Population = (select Population from city where ID = (
select Capital from country where Code = 'JPN'));

-- subconsultas de multiples columnas: devuelve multiples columnas de multiples filas
-- ej: encontrar nombes de ciudades en los paises en area mayor a 1000000 km2

select name
from city
where CountruCode in(select code from country where SurfaceArea > 1000000);

-- subconsultas de multiples columnas: devuelve multiples columnas de multiples filas
-- ej: encontrar  las ciudadesque tengan las misma poblacion

select name CountryCode, District,Population
from city
where (District,Population) in (select District,Population from 
city where CountryCode = 'USA');


-- subconsulta correlacionada: depende de la consulta externa para cada fila procesada
-- EJ: ciudades con poblacion mayor al promedio de poblacion

select name CoutryCode,Population
from city c1
where Population > (select avg(Population) from city c2 where c1.CountryCode
= c2.CountryCode);


-- indexacion
select * from city;

-- crear indice en la columna name de city
create index idx_city_name on city(name);
select * from city;
select name from city;

-- crear indice compuesto de las columnas district y population
create index idx_city_district_population on city (Disctrict,Population);


-- TRANSACCIONES
-- Son secuencias de uno o mas operaciones SQL, las cuales son ejecutadas como
-- una unica unidad de trabajo. En otras palabras, las transacciones
-- aseguran que todas las operaciones se realicen de manera correcta antes
-- de ser ejecutadas en la bbdd real, buscando cumplir con las propiedades
-- ACID(ATOMICIDAD, CONSISTENCIA, AISLAMIENTO, DURABILIDAD).

-- primer paso : iniciar las transacciones
start transaction;

-- segundo paso : hacer comandos
-- ej: actualizar la poblacion de la ciudad de 'new york'
update city
set population = 9000000
where name = 'New york';

select * from city where name = 'New york';

-- tercer paso: si quiero que los cambios se mantengan pongo commit, sino
-- revierto mis cambios con rollback
commit; -- mandar cambios a produccion
rollback; -- revertir cambios

