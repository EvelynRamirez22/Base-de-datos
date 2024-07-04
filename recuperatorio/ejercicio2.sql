/*Nos solicita un listado que contenga nombre, apellido, tipo de trabajo y
 departamento de todos los empleados y la ciudad.*/
 SELECT e.first_name AS nombre,e.last_name AS apellido,j.job_title AS tipo_de_trabajo,d.department_name AS departamento ,l.city AS ciudad
FROM jobs j JOIN employees e ON j.job_id = e.job_id
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id

 