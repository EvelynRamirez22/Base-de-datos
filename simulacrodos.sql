Ejercicio 1
// Mostrar los nombres de todos los departamentos de la empresa en orden alfabético.
SELECT department_name AS departamentos
FROM departments
ORDER BY departamentos ASC

Ejercicio 2
//Mostrar todos los posibles salarios ordenados de mayor a menor y sin repetir.
SELECT DISTINCT salary  AS salario
FROM employees
ORDER BY salario DESC

Ejercicio 3
//  Mostrar los puestos laborales de manager (que incluya la palabra manager)
junto con sus salarios minimos y maximos, ordenado de mayor a menor
primero por salario máximo y luego por el mínimo

SELECT job_title AS puestosDeManagers,max_salary,min_salary 
FROM jobs
WHERE puestosDeManagers LIKE '%manager%'
ORDER BY max_salary DESC, min_salary DESC

Ejercicio 4

//Mostrar los nombres de todos los países con su región correspondiente. 
 Pensar cómo ordenar para que los países de una misma región queden juntos.
SELECT c.country_name AS pais, r.region_name AS region 
FROM countries c 
JOIN regions r ON c.region_id = r.region_id
GROUP BY region,pais

Ejercicio 5
// Mostrar nombre, apellido, departamento y salario 

de los empleados/as que cobren entre 9000 y 17000, ordenado por el criterio que quieran
SELECT e.first_name AS nombre ,e.last_name AS apellido,d.department_name AS departamento,e.salary AS salario 
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE salario >=9000 AND salario <=17000
ORDER BY salario ASC

Ejercicio 6
//Mostrar la cantidad total de países que hay por región, descartando los que tengan 5 o menos.
SELECT COUNT(c.country_name), r.region_name 
FROM countries c 
JOIN regions r ON c.region_id = r.region_id
GROUP BY r.region_id
HAVING COUNT(c.country_name)

Ejercicio 7
// Mostrar la fecha más vieja y la más actual de los ingresos de los empleados
(Pista: las fechas se pueden comparar, la más vieja sería  la menor y la más actual la mayor).
SELECT MIN(hire_date) AS fecha_mas_antigua, MAX(hire_date) AS fecha_mas_actual
FROM employees

Ejercicio 8
//Mostrar nombre y apellido y cantidad de hijos de los 5 empleados/as que tengan mayor cantidad.
SELECT e.last_name, e.first_name, COUNT(*) as cant_hijos FROM employees e
JOIN dependents d ON e.employee_id = d.employee_id
GROUP BY e.employee_id
ORDER BY cant_hijos DESC
LIMIT 5;

Ejercicio 9
// Mostrar cual es el empleado con el tercer mejor sueldo.
SELECT first_name AS nombre, last_name AS apellido, salary AS salario
FROM employees
ORDER BY salario DESC
LIMIT 1 OFFSET 2;

Ejercicio 10 
//Mostrar la cantidad promedio y la cantidad máxima de hijos por empleado.
SELECT AVG(cant_hijos) AS prom_hijos, MAX(cant_hijos) AS hijos_max
FROM
(SELECT e.last_name, e.first_name, COUNT(*) as cant_hijos FROM employees e
JOIN dependents d ON e.employee_id = d.employee_id
GROUP BY e.employee_id
ORDER BY cant_hijos DESC)
