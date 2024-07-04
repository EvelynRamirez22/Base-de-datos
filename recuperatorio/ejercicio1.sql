/*Se necesita saber cuántos empleados hay en cada tipo de trabajo y cuanto se gasta
 en salarios, para esto nos solicita que creemos un listado de tres columnas donde
  indiquemos el nombre del tipo de trabajo, la cantidad de empleados y el gasto 
  total en sueldos de empleados por tipo de trabajo y necesita tenerla ordenada por 
  cantidad de empleados.*/

  SELECT 
    j.job_title, 
    COUNT(e.employee_id) AS cantidad_empleados, 
    SUM(e.salary) AS gasto_total_salarios
FROM employees e JOIN jobs j ON e.job_id = j.job_id
GROUP BY 
    j.job_title
ORDER BY 
    cantidad_empleados DESC;