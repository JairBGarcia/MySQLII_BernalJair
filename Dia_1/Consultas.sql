use medicos;

-- Consulta 1: Número de pacientes atendidos por cada médico
select m.ID_Medico, m.Nombre, count(p.ID_Paciente) as numero_pacientes
from Medicos m
left join Pacientes p on m.ID_Medico = p.ID_Medico
group by m.ID_Medico, m.Nombre;

--------------------------------------------------------------

-- Consulta 2: Total de días de vacaciones planificadas y disfrutadas por cada empleado
select e.ID_Empleado, e.Nombre,
sum(case when v.Estado = 'planificadas' then datediff(v.Fecha_Fin, v.Fecha_Inicio) + 1 else 0 end) as dias_vacaciones_planificadas,
sum(case when v.Estado = 'disfrutadas' then datediff(v.Fecha_Fin, v.Fecha_Inicio) + 1 else 0 end) as dias_vacaciones_disfrutadas
from Empleados e
left join Vacaciones v on e.ID_Empleado = v.ID_Empleado
group by e.ID_Empleado, e.Nombre;

--------------------------------------------------------------

-- Consulta 3: Médicos con mayor cantidad de horas de consulta en la semana
select hc.ID_Medico, m.Nombre, sum(TIME_TO_SEC(TIMEDIFF(hc.Hora_Fin, hc.Hora_Inicio))) / 3600 as horas_consulta_semana
from Horario_Consultas hc
inner join Medicos m on hc.ID_Medico = m.ID_Medico
group by hc.ID_Medico, m.Nombre
order by horas_consulta_semana desc;

--------------------------------------------------------------

-- Consulta 4: Número de sustituciones realizadas por cada médico sustituto
select s.ID_Medico, m.Nombre, count(*) as numero_sustituciones
from Sustituciones s
inner join Medicos m on s.ID_Medico = m.ID_Medico
where m.Tipo = 'sustituto'
group by s.ID_Medico, m.Nombre;

--------------------------------------------------------------

-- Consulta 5: Número de médicos que están actualmente en sustitución
select count(distinct ID_Medico) as medicos_en_sustitucion
from Sustituciones;

--------------------------------------------------------------

-- Consulta 6: Horas totales de consulta por médico por día de la semana
select hc.ID_Medico, m.Nombre, hc.Dia_Semana, sum(TIME_TO_SEC(TIMEDIFF(hc.Hora_Fin, hc.Hora_Inicio))) / 3600 as horas_consulta_dia
from Horario_Consultas hc
inner join Medicos m on hc.ID_Medico = m.ID_Medico
group by hc.ID_Medico, m.Nombre, hc.Dia_Semana;

--------------------------------------------------------------

-- Consulta 7: Médico con mayor cantidad de pacientes asignados
select p.ID_Medico, m.Nombre, count(*) as cantidad_pacientes
from Pacientes p
inner join Medicos m on p.ID_Medico = m.ID_Medico
group by p.ID_Medico, m.Nombre
order by cantidad_pacientes desc
limit 1;

--------------------------------------------------------------

-- Consulta 8: Empleados con más de 10 días de vacaciones disfrutadas
select e.ID_Empleado, e.Nombre
from Empleados e
inner join Vacaciones v on e.ID_Empleado = v.ID_Empleado
where v.Estado = 'disfrutadas'
group by e.ID_Empleado, e.Nombre
having sum(datediff(v.Fecha_Fin, v.Fecha_Inicio) + 1) > 10;

--------------------------------------------------------------

-- Consulta 9: Médicos que actualmente están realizando una sustitución
select distinct s.ID_Medico, m.Nombre
from Sustituciones s
inner join Medicos m on s.ID_Medico = m.ID_Medico;

--------------------------------------------------------------

-- Consulta 10: Promedio de horas de consulta por médico por día de la semana
select hc.ID_Medico, m.Nombre, hc.Dia_Semana, avg(TIME_TO_SEC(TIMEDIFF(hc.Hora_Fin, hc.Hora_Inicio))) / 3600 as promedio_horas_consulta
from Horario_Consultas hc
inner join Medicos m on hc.ID_Medico = m.ID_Medico
group by hc.ID_Medico, m.Nombre, hc.Dia_Semana;
