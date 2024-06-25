/*Listar el nombre de todos los empleados junto al nombre de departamento que pertenece,
 el estado o provincia, su sueldo y el nombre de su manager, ordenarlo por sueldo*/
SELECT e.first_name,d.department_name,l.state_province,e.salary, m.first_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id
INNER JOIN locations l ON d.location_id = l.location_id
JOIN employees m ON m.manager_id = e.employee_id
ORDER BY e.salary ASC


/*reducir el salario mínimo y máximo de cada trabajo un 25%.*/
UPDATE jobs
SET min_salary = min_salary * 0.75,
    max_salary = max_salary * 0.75

/*Eliminar aquellos trabajadores que cobren sobre el salario máximo
 de su tipo de trabajo.*/
 