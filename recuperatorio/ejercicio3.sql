/*Debido a una política de mejora de sueldos nos solicitan que incrementemos un 55% 
el salario de todos los empleados que cobren menos de 7500 y pertenezcan al 
departamento de IT o Financiero (finance)*/


UPDATE employees
SET salary = salary * 1.55
WHERE salary < 7500 
  AND (department_id = '6' OR department_id = '10')