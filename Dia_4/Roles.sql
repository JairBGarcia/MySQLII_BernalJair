use AutoRental;

-- Crear usuarios
create user 'empleado'@'localhost' identified by 'empleado123';
create user 'cliente'@'localhost' identified by 'cliente123';

-- Otorgar permisos para el usuario 'cliente'
grant execute on function AutoRental.historial_alquileres to 'cliente'@'localhost';
grant execute on procedure AutoRental.registrar_alquiler to 'cliente'@'localhost';
grant execute on procedure AutoRental.consultar_disponibilidad_vehiculos to 'cliente'@'localhost';

-- Otorgar permisos para el usuario 'empleado'
grant execute on procedure AutoRental.insertar_sucursal to 'empleado'@'localhost';
grant execute on procedure AutoRental.actualizar_sucursal to 'empleado'@'localhost';
grant execute on procedure AutoRental.registrar_vehiculo to 'empleado'@'localhost';
grant execute on procedure AutoRental.actualizar_vehiculo to 'empleado'@'localhost';
grant execute on procedure AutoRental.registrar_empleado to 'empleado'@'localhost';
grant execute on procedure AutoRental.actualizar_empleado to 'empleado'@'localhost';

-- Mostrar permisos del usuario 'cliente'
show grants for 'cliente'@'localhost';
show grants for 'empleado'@'localhost';
-- Aplicar cambios de permisos
flush privileges;
