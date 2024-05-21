-- 6) Contar la cantidad de autos de cada
-- marca, ordenadas desde la que tiene más 
-- autos a la que tiene menos.  Descartar
-- las marcas que tienen menos de 100 autos

SELECT DISTINCT car_make, COUNT(car_make)
FROM drivers_license 
GROUP BY car_make
HAVING COUNT(car_make) > 100
ORDER BY COUNT(car_make) DESC