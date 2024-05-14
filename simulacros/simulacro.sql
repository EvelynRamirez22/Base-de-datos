Ejercicio 1
SELECT title FROM film
	ORDER BY title ASC

Ejercicio 2
SELECT DISTINCT rating FROM film
ORDER BY rating ASC

Ejercicio 3
SELECT title, rental_rate FROM film 
WHERE rating LIKE 'PG%'
ORDER BY rental_rate DESC, title ASC

Ejercicio 4
SELECT city, country FROM customer_list
GROUP BY country, city

Ejercico 5
SELECT country, COUNT(city) AS city_count
FROM customer_list
GROUP BY country
ORDER BY city_count DESC

Ejercicio 6
SELECT country, COUNT(city) AS city_count 
 FROM customer_list
 GROUP BY country
 HAVING COUNT(city) > 2

 Ejercicio 7
SELECT MIN(return_date) AS fecha_mas_antigua, MAX(return_date) AS fecha_mas_actual
FROM rental
WHERE return_date IS NOT NULL

Ejercicio 8
SELECT f.title, count(a.actor_id) AS actor_count
FROM film f 
JOIN film_actor a ON a.film_id = f.film_id
GROUP BY a.actor_id
ORDER BY actor_count ASC
LIMIT 10

Ejercicio 9
