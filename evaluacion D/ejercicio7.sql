-- 7) Mostrar los nombres, numeros de seguridad social
-- (ssn), id de membresía y tipo de membresía de
-- las personas que fueron al gimnasio aunque sea una
-- vez durante el 2017.  Los resultados deben estar
-- ordenados de manera que los de un mismo tipo de
-- membresía (gold, silver, etc) aparezcan todos 
-- seguidos y dentro de cada una ordenados por ssn.   

SELECT p.name, p.ssn,gs.membership_id, g.membership_status,count(gs.check_in_date) as cant_veces,gs.check_in_date FROM person p 
JOIN get_fit_now_member g ON p.id = g.person_id 
JOIN get_fit_now_check_in gs ON  g.id = gs.membership_id
WHERE check_in_date like "2017%"
GROUP BY gs.membership_id
HAVING cant_veces > 1
ORDER BY membership_status ASC, p.ssn ASC