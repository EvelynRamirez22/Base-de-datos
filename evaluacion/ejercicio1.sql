/*-- 1) Mostrar todas las ciudades donde se 
-- reportaron asesinatos. 
-- Las ciudades deben estar en orden alfabético
-- y no debe haber repetidos*/

SELECT DISTINCT city FROM crime_scene_report 
WHERE type LIKE '%murder%'
ORDER BY city ASC
