/*Como último requerimiento nos solicitan eliminar todos los trabajos que no posean empleados asociados, 
la query tiene que tener la capacidad de eliminar todos los jobs que no posean empleados en una sola ejecución 
sin indicar de manera manual el numero los jobs_id a eliminar.*/


DELETE FROM jobs
WHERE NOT EXISTS (
    SELECT *
    FROM employees
    WHERE employees.job_id = jobs.job_id
);
