-- aliasy
USE sakila;
SELECT title, release_year, length, rental_duration, rental_rate, replacement_cost
FROM film LIMIT 20; 

SELECT title AS nazwa FROM film;

SELECT 
	title AS 'tytył filmu', 
    release_year AS 'rok wydania', 
    length AS 'długość filmu', 
    rental_duration AS 'czas wyporzyczenia', 
    rental_rate AS 'koszt wyporzyczenia', 
    replacement_cost AS 'koszt wykupu'
FROM film 
LIMIT 20; 