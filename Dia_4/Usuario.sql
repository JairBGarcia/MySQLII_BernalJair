use AutoRental;

CREATE USER 'empleados'@'localhost' IDENTIFIED BY 'empleado123';

GRANT SELECT ON AutoRental.* TO 'empleados'@'localhost';

FLUSH PRIVILEGES;


