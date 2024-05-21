/* 1) Mostrar todos los tipos de crimenes reportados en la ciudad 'SQL City'.
Los tipos de crimen deben estar en orden alfabético y no debe haber repetidos*/

SELECT DISTINCT type,city FROM crime_scene_report
WHERE city LIKE '%SQL City%'
ORDER BY type ASC