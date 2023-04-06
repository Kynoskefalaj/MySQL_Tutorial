USE sakila;

DESC film;
-- WYświetl 50 pierwszych filmów podając ich tytuły i rating
SELECT title, rating FROM film LIMIT 50;

--  Wyświetl tytuły 20 ostatnich filmów
SELECT film_id, title, rating FROM  film LIMIT 980, 20; 

-- Sprawdz co się stanie jeśli spróbujemy wybrać filmy z ratingiem "general", ale zamiast wielkiej litery napiszemy warunek z małej "g"
SELECT film_id, title, rating FROM film WHERE rating = 'g';
-- O dziwo ten warunek nie jest match case

SELECT rating FROM film;
-- Znajdz 20 pierwszych filmów dla dzieci powyżej 13 roku życia (PG-13), podaj ich tytuły oraz długość i koszt wypożyczenia
DESC film;
SELECT title, length, rental_rate from film WHERE rating = 'pg-13' LIMIT 20;

