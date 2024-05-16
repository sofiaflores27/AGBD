SELECT title from film

SELECT DISTINCT rating from film 
ORDER by rating ASC

SELECT title,rental_rate, rating from film
WHERE rating LIKE "%PG%"
ORDER BY rental_rate ASC 

SELECT title,rental_rate, rating from film
WHERE rating LIKE "%PG%"
ORDER BY rental_rate ASC 