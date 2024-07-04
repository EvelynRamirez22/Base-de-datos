/*Nos solicitan actualizar el número de teléfono de los gerentes de ventas que no 
tengan un numero de telefono asociado, 
se debe registrar el número ‘333.444.555*/

UPDATE employees
SET phone_number = '333.444.555'
WHERE job_id = '15'
  AND phone_number IS NULL