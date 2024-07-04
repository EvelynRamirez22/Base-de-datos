/*Nos informa que la empresa dejará de prestar operaciones en Canadá, por lo que nos solicitan que 
eliminemos todos los empleados, departamentos y locaciones pertenecientes a Canadá junto 
con el país.*/
DELETE FROM employees
WHERE department_id = 2;

DELETE FROM departments
WHERE department_id = 2;

DELETE FROM locations
WHERE country_id = 'CA';

DELETE FROM countries
WHERE country_id = 'CA';

