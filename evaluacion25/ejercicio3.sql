/*El encargado del departamento de ventas nos informó que detecto que hay algunos empleados que no poseen un 
número de teléfono cargado, nos solicitó que le pasemos la lista de aquellos empleados que no tienen 
cargado un número de teléfono, esta lista debe estar confeccionada por id de empleado, nombre, apellido, 
correo electrónico, número de teléfono y id de departamento. Y que por favor le carguemos momentáneamente el 
numero de la empresa (111.222.3344) para evitar tener valores null en esos campos.*/

SELECT employee_id, first_name, last_name,email,phone_number, department_id
FROM employees
WHERE phone_number IS NULL

UPDATE employees
SET phone_number = '111.222.3344'
WHERE phone_number IS NULL 