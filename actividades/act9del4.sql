Ejercicio 1
SELECT first_name, last_name, salary FROM employees WHERE salary <6000
Ejercicio 2
SELECT e.first_name, e.last_name,d.department_id, city,state_province FROM  employees e
 JOIN departments d On e.department_id = d.department_id
  JOIN locations l ON d.location_id = l.location_id
Ejercicio 3
SELECT e.first_name "Empleado", m.first_name "Jefe" FROM employees e 
JOIN employees m ON e.employee_id = m.manager_id
ORDER BY "Jefe"
Ejercicio 4
SELECT e.first_name "Nombre",e.last_name "apellido", d.first_name"Nombre del hijx", d.last_name "Apellido del hijx" 
FROM dependents d JOIN employees e ON e.employee_id = d.employee_id
 ORDER BY  e.first_name,e.last_name, d.first_name, d.last_name ASC
 Ejercicio 5
 SELECT e.first_name "Empleado",j.job_title "Puesto",j.max_salary "Salario" FROM employees e JOIN jobs j ON j.job_id = e.job_id
ORDER BY max_salary DESC
Ejercicio 6
/*Para renombrar se utiliza AS*/
SELECT first_name AS Nombre, last_name AS Apellido, department_name AS Departamento, salary AS Salario
 FROM employees e JOIN departments d ON d.department_id = e.department_id
ORDER BY Nombre ASC, Departamento 
Ejercicio 7
SELECT e.first_name AS Nombre , l.state_province AS Estado FROM employees e 
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
ORDER BY Nombre , Estado ASC
Ejercicio 8
SELECT e.first_name AS Nombre, e.last_name AS Apellido, c.country_name AS Pais, r.region_name AS Region FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
JOIN countries c ON l.country_id = c.country_id
JOIN regions r ON c.region_id = r.region_id
ORDER BY Pais ASC
Ejercicio 9
SELECT c.country_name AS Pais, r.region_name AS Region FROM countries c 
JOIN regions r ON c.region_id = r.region_id
ORDER BY Pais DESC, Region DESC
Ejercicio 10.
 SELECT e.first_name AS Nombre,j.job_title AS Empleo ,j.min_salary AS Salario FROM employees e JOIN jobs j ON j.job_id = e.job_id
ORDER BY min_salary ASC


