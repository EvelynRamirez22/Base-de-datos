/*-- 2) Listar el nombre y los datos del auto
-- (marca, modelo y patente) de todos los
-- varones más de 70 años, elegir el orden
-- en que se muestran */


SELECT p.name,d.plate_number,d.car_make,d.car_model FROM person p
JOIN drivers_license d ON p.license_id = d.id
WHERE gender LIKE '%male%' AND height >70
ORDER BY p.name ASC