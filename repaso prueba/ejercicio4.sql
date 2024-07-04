/*Calcular la cantidad de personas, el sueldo promedio, mínimo y máximo de todos los puestos 
laborales (job_title), descartando aquellos que tengan un sólo empleado.*/

SELECT 
  j.job_title,
  COUNT(employee_id) AS num_employees,
  AVG(e.salary) AS avg_salary,
  MIN(j.min_salary) AS min_salary,
  MAX(j.max_salary) AS max_salary
FROM employees e JOIN jobs j ON e.job_id = j.job_id
GROUP BY 
  j.job_title
HAVING 
  COUNT(*) > 1;