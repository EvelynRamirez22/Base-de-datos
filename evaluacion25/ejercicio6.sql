/*Nos informa que la empresa dejara de prestar operaciones en Alemania, por lo que nos solicitan que 
eliminemos todos los empleados, departamentos y locaciones pertenecientes a Alemania junto con el pais.*/

DELETE FROM employees
WHERE department_id = 7;

DELETE FROM departments
WHERE department_id = 7;

DELETE FROM locations
WHERE country_id = 'US';

DELETE FROM countries
WHERE country_id = 'US';



