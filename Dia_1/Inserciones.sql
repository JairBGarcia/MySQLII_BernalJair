use medicos;

insert into Medicos (Nombre, Dirección, Teléfono, Población, Provincia, Código_Postal, NIF, Número_Seguridad_Social, Número_Colegiado, Tipo) 
values 
('Dr. Juan Pérez', 'Calle Mayor 123', '123456789', 'Madrid', 'Madrid', '28001', '12345678A', '1234567890', '1234', 'titular'),
('Dra. María Gómez', 'Avenida Libertad 45', '987654321', 'Barcelona', 'Barcelona', '08001', '87654321B', '0987654321', '5678', 'interino'),
('Dr. Antonio Ruiz', 'Plaza España 1', '654321987', 'Valencia', 'Valencia', '46001', '56789012C', '5678901234', '9101', 'sustituto'),
('Dr. Laura Martínez', 'Calle Sol 7', '789012345', 'Sevilla', 'Sevilla', '41001', '34567890D', '3456789012', '2345', 'titular'),
('Dra. Carlos García', 'Paseo Marítimo 20', '567890123', 'Málaga', 'Málaga', '29001', '23456789E', '2345678901', '6789', 'interino'),
('Dr. Ana López', 'Calle Gran Vía 15', '345678901', 'Zaragoza', 'Zaragoza', '50001', '45678901F', '4567890123', '8901', 'titular'),
('Dra. Javier Hernández', 'Avda. de la Constitución 3', '901234567', 'Murcia', 'Murcia', '30001', '56789012G', '5678901234', '1234', 'interino'),
('Dr. María Rodríguez', 'Calle Mayor 8', '678901234', 'Bilbao', 'Vizcaya', '48001', '67890123H', '6789012345', '5678', 'sustituto'),
('Dr. Marta Sánchez', 'Paseo de Gracia 25', '456789012', 'Alicante', 'Alicante', '03001', '78901234I', '7890123456', '9101', 'titular'),
('Dra. Pablo Fernández', 'Ronda Sant Pere 30', '234567890', 'Vallecas', 'Madrid', '28031', '89012345J', '8901234567', '2345', 'interino'),
('Dr. Sonia Pérez', 'Gran Vía 5', '012345678', 'Leganés', 'Madrid', '28914', '90123456K', '9012345678', '6789', 'titular'),
('Dra. Manuel García', 'Calle Mayor 1', '890123456', 'San Sebastián', 'Guipúzcoa', '20001', '01234567L', '0123456789', '8901', 'interino'),
('Dr. Carmen Martín', 'Plaza Cataluña 10', '678901234', 'Salamanca', 'Salamanca', '37001', '12345678M', '1234567890', '1234', 'sustituto'),
('Dr. Isabel Gómez', 'Paseo de la Castellana 100', '456789012', 'Toledo', 'Toledo', '45001', '23456789N', '2345678901', '5678', 'titular'),
('Dra. Jorge Rodríguez', 'Avenida Diagonal 50', '234567890', 'Córdoba', 'Córdoba', '14001', '34567890O', '3456789012', '9101', 'interino');

INSERT INTO Horario_Consultas (ID_Medico, Dia_Semana, Hora_Inicio, Hora_Fin)
VALUES
(1, 'Lunes', '08:00:00', '12:00:00'),
(1, 'Martes', '08:00:00', '12:00:00'),
(1, 'Miércoles', '08:00:00', '12:00:00'),
(2, 'Martes', '09:00:00', '13:00:00'),
(2, 'Jueves', '09:00:00', '13:00:00'),
(3, 'Viernes', '10:00:00', '14:00:00'),
(4, 'Lunes', '09:00:00', '13:00:00'),
(4, 'Miércoles', '09:00:00', '13:00:00'),
(5, 'Martes', '10:00:00', '14:00:00'),
(5, 'Jueves', '10:00:00', '14:00:00'),
(6, 'Lunes', '08:30:00', '12:30:00'),
(6, 'Miércoles', '08:30:00', '12:30:00'),
(7, 'Martes', '07:00:00', '11:00:00'),
(7, 'Jueves', '07:00:00', '11:00:00'),
(8, 'Lunes', '10:00:00', '14:00:00');

INSERT INTO Sustituciones (ID_Medico, Fecha_Alta, Fecha_Baja)
VALUES
(2, '2024-06-01', '2024-06-15'),
(3, '2024-07-01', '2024-07-15'),
(1, '2024-08-01', '2024-08-15'),
(4, '2024-09-01', '2024-09-15'),
(5, '2024-10-01', '2024-10-15'),
(6, '2024-11-01', '2024-11-15'),
(7, '2024-12-01', '2024-12-15'),
(8, '2025-01-01', '2025-01-15'),
(9, '2025-02-01', '2025-02-15'),
(10, '2025-03-01', '2025-03-15'),
(11, '2025-04-01', '2025-04-15'),
(12, '2025-05-01', '2025-05-15'),
(13, '2025-06-01', '2025-06-15'),
(14, '2025-07-01', '2025-07-15'),
(15, '2025-08-01', '2025-08-15');

INSERT INTO Empleados (Nombre, Dirección, Teléfono, Población, Provincia, Código_Postal, NIF, Número_Seguridad_Social, Tipo)
VALUES
('Ana Martín', 'Calle Libertad 10', '111222333', 'Madrid', 'Madrid', '28002', '11111111X', '1111111111', 'ATS'),
('Carlos López', 'Avda. Europa 20', '444555666', 'Barcelona', 'Barcelona', '08002', '22222222Y', '2222222222', 'auxiliar_de_enfermería'),
('Laura Sánchez', 'Plaza Mayor 5', '777888999', 'Valencia', 'Valencia', '46002', '33333333Z', '3333333333', 'administrativo'),
('Juan Pérez', 'Calle Sol 8', '999888777', 'Sevilla', 'Sevilla', '41002', '44444444W', '4444444444', 'ATS'),
('María Gómez', 'Avda. Libertad 50', '333222111', 'Málaga', 'Málaga', '29002', '55555555U', '5555555555', 'auxiliar_de_enfermería'),
('Pedro Sánchez', 'Calle Mayor 15', '666777888', 'Zaragoza', 'Zaragoza', '50002', '66666666R', '6666666666', 'administrativo'),
('Isabel Martínez', 'Avda. Constitución 4', '000111222', 'Murcia', 'Murcia', '30002', '77777777T', '7777777777', 'ATS_de_zona'),
('Sergio Rodríguez', 'Calle Mayor 9', '444555666', 'Bilbao', 'Vizcaya', '48002', '88888888Q', '8888888888', 'celador'),
('Luisa García', 'Paseo Gracia 30', '777888999', 'Alicante', 'Alicante', '03002', '99999999P', '9999999999', 'administrativo'),
('Diego Fernández', 'Ronda Sant Pere 35', '222333444', 'Vallecas', 'Madrid', '28032', '00000000S', '0000000000', 'ATS_de_zona'),
('Rosa Pérez', 'Gran Vía 10', '888999000', 'Leganés', 'Madrid', '28915', 'EEEEEEEEA', '1111111111', 'celador'),
('Javier Sánchez', 'Calle Mayor 2', '000111222', 'San Sebastián', 'Guipúzcoa', '20002', 'RRRRRRRRB', '2222222222', 'administrativo'),
('Ana García', 'Plaza Cataluña 15', '333444555', 'Salamanca', 'Salamanca', '37002', 'TTTTTTTTC', '3333333333', 'ATS'),
('Miguel Martínez', 'Paseo Castellana 110', '666777888', 'Toledo', 'Toledo', '45002', 'YYYYYYYYD', '4444444444', 'auxiliar_de_enfermería'),
('Elena Rodríguez', 'Avenida Diagonal 55', '999888777', 'Córdoba', 'Córdoba', '14002', 'UUUUUUUUE', '5555555555', 'administrativo');

INSERT INTO Vacaciones (ID_Medico, ID_Empleado, Fecha_Inicio, Fecha_Fin, Estado)
VALUES
(1, 1, '2024-07-01', '2024-07-15', 'planificadas'),
(2, 3, '2024-08-01', '2024-08-15', 'disfrutadas'),
(3, 2, '2024-09-01', '2024-09-15', 'planificadas'),
(4, 5, '2024-10-01', '2024-10-15', 'disfrutadas'),
(5, 4, '2024-11-01', '2024-11-15', 'planificadas'),
(6, 7, '2024-12-01', '2024-12-15', 'disfrutadas'),
(7, 6, '2025-01-01', '2025-01-15', 'planificadas'),
(8, 9, '2025-02-01', '2025-02-15', 'disfrutadas'),
(9, 8, '2025-03-01', '2025-03-15', 'planificadas'),
(10, 11, '2025-04-01', '2025-04-15', 'disfrutadas'),
(11, 10, '2025-05-01', '2025-05-15', 'planificadas'),
(12, 13, '2025-06-01', '2025-06-15', 'disfrutadas'),
(13, 12, '2025-07-01', '2025-07-15', 'planificadas'),
(14, 15, '2025-08-01', '2025-08-15', 'disfrutadas'),
(15, 14, '2025-09-01', '2025-09-15', 'planificadas');

INSERT INTO Pacientes (ID_Medico, Nombre, Dirección, Teléfono, Código_Postal, NIF, Número_Seguridad_Social)
VALUES
(1, 'Ana Martínez', 'Calle Libertad 12', '111222333', '28002', '11111111X', '1111111111'),
(2, 'Pedro Gómez', 'Avda. Europa 25', '444555666', '08002', '22222222Y', '2222222222'),
(3, 'Sara Sánchez', 'Plaza Mayor 8', '777888999', '46002', '33333333Z', '3333333333'),
(4, 'David Pérez', 'Calle Sol 9', '999888777', '41002', '44444444W', '4444444444'),
(5, 'Laura García', 'Avda. Libertad 55', '333222111', '29002', '55555555U', '5555555555'),
(6, 'Javier Martínez', 'Calle Mayor 18', '666777888', '50002', '66666666R', '6666666666'),
(7, 'Elena Sánchez', 'Avda. Constitución 6', '000111222', '30002', '77777777T', '7777777777'),
(8, 'Carlos Rodríguez', 'Calle Mayor 11', '444555666', '48002', '88888888Q', '8888888888'),
(9, 'María Pérez', 'Paseo Gracia 35', '777888999', '03002', '99999999P', '9999999999'),
(10, 'Pablo Martínez', 'Ronda Sant Pere 40', '222333444', '28032', '00000000S', '0000000000'),
(11, 'Luisa Sánchez', 'Gran Vía 15', '888999000', '28915', 'EEEEEEEEA', '1111111111'),
(12, 'Diego García', 'Calle Mayor 3', '000111222', '20002', 'RRRRRRRRB', '2222222222'),
(13, 'Rosa Martínez', 'Plaza Cataluña 20', '333444555', '37002', 'TTTTTTTTC', '3333333333'),
(14, 'Miguel Sánchez', 'Paseo Castellana 115', '666777888', '45002', 'YYYYYYYYD', '4444444444'),
(15, 'Elena Martínez', 'Avenida Diagonal 60', '999888777', '14002', 'UUUUUUUUE', '5555555555');


