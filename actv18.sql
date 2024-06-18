/*Actividad 1*/
/*Agregar 2 regiones, afria y middle east*/

INSERT INTO regions(region_name)
VALUES("Africa");

INSERT INTO regions(region_name)
VALUES("Middle east");

/*Actividad 2*/
/*Modificar/pasar los paises de la actual region "Middle east and africa" a las nuevas regiones*/

UPDATE countries
SET region_id = 5
WHERE country_name LIKE '%Israel%' OR country_name LIKE '%Kuwait%' 

UPDATE countries
SET region_id = 6
WHERE country_name LIKE '%Egypt%' OR country_name LIKE '%Nigeria%' OR country_name LIKE '%Zambia%' OR country_name LIKE '%Zimbabwe%'

/*Actividad 3*/
/*Una vez que la región “Middle east and africa” este vacía borrar la región.*/
DELETE FROM regions
WHERE region_id = 4;

/*Actividad 4*/
/*Agregar dos países más a cada una de las nuevas regiones.*/

INSERT INTO countries(country_id,country_name, region_id) 
VALUES("26","Angola","6");

INSERT INTO countries(country_id,country_name, region_id) 
VALUES("27","Benin","6");

INSERT INTO countries(country_id,country_name, region_id) 
VALUES("28","Catar","5");

INSERT INTO countries(country_id,country_name, region_id) 
VALUES("29","Irak","5");

/*Actividad 5*/
/*Volver a crear la región “Middle east and africa”*/
INSERT INTO regions(region_name)
VALUES("Middle east and africa");

/*Actividad 6*/
/*Utilizando IN y subquery pasar los países que se encuentran en la región Africa y 
Middle East (5 y 6) a la nueva región */

UPDATE countries 
SET region_id = 7
WHERE country_id in (SELECT country_id FROM countries WHERE region_id in (5,6))
