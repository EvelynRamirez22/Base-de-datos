-- 8) Hacer un ranking de los 5 eventos más populares
-- a los que asistieron las personas que ganan 
-- más de 35000 dolares al año.  
SELECT f.event_name FROM facebook_event_checkin f
JOIN  person p ON f.person_id = p.id
JOIN income i ON p.ssn = i.ssn
WHERE i.annual_income > 35000
LIMIT 5;
