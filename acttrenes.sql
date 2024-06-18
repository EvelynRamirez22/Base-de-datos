/*Actividad 1*/
/*Mostrar la cantidad de estaciones totales.*/

SELECT COUNT(DISTINCT NOMBRE_ESTACION) FROM barcelona_viajeros_por_franja_xlsx 

/*Actividad 2*/
/*Mostrar un listado de estaciones único.*/

SELECT DISTINCT NOMBRE_ESTACION FROM barcelona_viajeros_por_franja_xlsx 

/*Actividad 3*/
/*Al listado obtenido adicionar una columna con el total de pasajeros subidos 
y otra con el total de pasajeros que bajaron.*/

SELECT  NOMBRE_ESTACION,sum(VIAJEROS_BAJADOS),sum(VIAJEROS_SUBIDOS) FROM barcelona_viajeros_por_franja_xlsx 
GROUP BY NOMBRE_ESTACION 

/*Actividad 4*/
/*A la consulta anterior adicionar una columna que muestre la diferencia entre los pasajeros que 
subieron y bajaron.*/

SELECT  NOMBRE_ESTACION,sum(VIAJEROS_BAJADOS),sum(VIAJEROS_SUBIDOS), (VIAJEROS_BAJADOS - VIAJEROS_SUBIDOS) FROM barcelona_viajeros_por_franja_xlsx 
GROUP BY NOMBRE_ESTACION 

/*Actividad 5*/
/*Mostrar cuál fue la estación que más pasajeros subieron por tramo horario*/

SELECT NOMBRE_ESTACION, MAX(VIAJEROS_SUBIDOS) AS subidos, TRAMO_HORARIO 
FROM barcelona_viajeros_por_franja_xlsx
GROUP BY TRAMO_HORARIO


/*Actividad 6*/
/*Mostrar cuál fue la estación que más pasajeros subieron en el dia*/

SELECT NOMBRE_ESTACION, SUM(VIAJEROS_SUBIDOS) AS subidos, TRAMO_HORARIO 
FROM barcelona_viajeros_por_franja_xlsx
GROUP BY NOMBRE_ESTACION

/*Actividad 7*/
/*Mostrar cuál fue la estación que más pasajeros bajaron por tramo horario*/

SELECT NOMBRE_ESTACION, MAX(VIAJEROS_BAJADOS) AS BAJADOS, TRAMO_HORARIO 
FROM barcelona_viajeros_por_franja_xlsx
GROUP BY TRAMO_HORARIO

/*Actividad 8*/
/*Mostrar cuál fue la estación que más pasajeros bajaron en el dia*/
SELECT NOMBRE_ESTACION, SUM(VIAJEROS_BAJADOS) AS BAJADOS, TRAMO_HORARIO 
FROM barcelona_viajeros_por_franja_xlsx
GROUP BY NOMBRE_ESTACION

/*Actividad 9*/
/*Mostrar cuál fue la estación que  tuvo la mayor diferencia entre pasajeros que 
subieron y bajaron por tramo horario en el dia*/