/*Nos solicita un listado que contenga nombre, apellido, departamento y pais de todos los empleados que trabajan en Estados Unidos. */
SELECT e.first_name AS nombre,e.last_name AS apellido,d.department_name AS departamento ,c.country_name AS pais
FROM employees e 
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
JOIN countries c ON l.country_id = c.country_id
WHERE c.country_id  = 'US'