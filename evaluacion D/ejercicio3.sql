 /*3) Buscar la lista de todas las personas
-- que NO están asociadas al gimnasio Get-Fit-Now*/
SELECT p.name AS personas, g.name AS personas_asociadas  FROM person p
 LEFT JOIN get_fit_now_member g ON p.id = g.person_id
 WHERE membership_status IS NULL