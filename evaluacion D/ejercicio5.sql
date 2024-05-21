-- 5) Encontrar la edad mínima, máxima y promedio
-- de los varones que tienen licencia de conducir
SELECT MIN(age) AS edad_minima, MAX(age) AS edad_maxima, AVG(age) AS promedio
FROM drivers_license 
WHERE gender LIKE '%male%' 