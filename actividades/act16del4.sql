Parte 1
SElECT * 
FROM crime_scene_report 
WHERE date = "20180115" AND city = "SQL City" AND type = "murder"

Parte 2
SElECT name, max(address_number)
FROM person 
WHERE address_street_name = 'Northwestern Dr'

Parte 3
SElECT name,address_number,address_street_name
FROM person 
WHERE name LIKE '%Annabel%'
limit 1           

Parte 4
SELECT p.name AS nombre, i.transcript 
from interview i JOIN person p ON i.person_id = p.id
WHERE nombre LIKE 'Annabel Miller'

Parte 5
SELECT p.name AS nombre, i.transcript 
from interview i JOIN person p ON i.person_id = p.id
WHERE nombre LIKE 'Morty Schapiro'

Parte 6
SELECT p.name AS nombre, d.plate_number AS patente
from person p JOIN drivers_license d ON p.license_id = d.id
WHERE patente LIKE '%H42W%'

Parte 7
SELECT p.name AS nombre, d.plate_number AS patente, membership_status
from person p JOIN drivers_license d ON p.license_id = d.id
JOIN get_fit_now_member g ON g.person_id = p.id
WHERE patente LIKE '%H42W%' AND membership_status= 'gold'

Parte 8, final
INSERT INTO solution VALUES (1, 'Jeremy Bowers');
        
        SELECT value FROM solution;