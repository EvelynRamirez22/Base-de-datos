/*Debido a una politica de mejora de sueldos nos solicitan que incrementemos un 20% el salario de todos los 
empleados que cobren 8000 o menos que trabajen de programadores o empleados de compra (Purchasing Clerk).
*/

 UPDATE employees
SET salary = salary * 1.2
WHERE salary <= 8000 AND(job_id = 9  OR  job_id = 13);

