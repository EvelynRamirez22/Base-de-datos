/*-- 5) Encontrar la edad mínima, máxima y promedio
-- de las mujeres que tienen licencia de conducir*/

SELECT MAX(height), MIN(height), AVG(height) FROM drivers_license 
WHERE gender LIKE '%female%'