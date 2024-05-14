/*-- 4) Encontrar el nombre y la dirección completa
-- de la persona que vive en la anteúltima casa
-- de la calle 'Franklin Ave'*/


SELECT name,address_number,address_street_name FROM person 
WHERE address_street_name LIKE '%Franklin Ave%'
LIMIT 1 OFFSET 43;