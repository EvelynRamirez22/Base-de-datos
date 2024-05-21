
/*2) Listar el nombre de la persona y los datos del auto (marca, modelo y patente) de 
todos las mujeres de menos de 40 años, elegir el orden en que se muestran */

SELECT p.name, d.car_model,d.car_make,d.plate_number
FROM person p
JOIN drivers_license d ON p.license_id = d.id
WHERE gender = 'female' AND age < 40
ORDER BY name ASC