-- 6) Contar la cantidad de miembros del 
-- gimnasio de cada categoría (gold, silver, 
-- etc), ordenadas desde la que tiene más 
-- miembros a la que tiene menos
SELECT membership_status,COUNT(*) AS cantidad FROM get_fit_now_member
GROUP BY membership_status
ORDER BY cantidad DESC