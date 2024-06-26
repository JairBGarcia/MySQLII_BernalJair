use AutoRental;

SELECT a.id, c.nombres AS cliente_nombres, c.apellidos AS cliente_apellidos, e.nombres AS empleado_nombres, e.apellidos AS empleado_apellidos, 
       v.tipo_vehiculo, v.placa, a.fecha_salida, a.fecha_llegada, a.valor_pagado
FROM Alquileres a
JOIN Clientes c ON a.cliente_id = c.id
JOIN Empleados e ON a.empleado_id = e.id
JOIN Vehiculos v ON a.vehiculo_id = v.id;




