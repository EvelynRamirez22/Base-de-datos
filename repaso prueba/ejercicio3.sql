/*Eliminar todos los trabajos que no posean empleados asociados, la query tiene que tener la 
capacidad de eliminar los jobs que no posean empleados de una sola ejecución sin indicar de manera 
manual el número de jobs_id a eliminar.*/
DELETE FROM jobs
WHERE job_id NOT IN (
  SELECT job_id
  FROM employees
  GROUP BY job_id
);
