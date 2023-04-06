SELECT title, length FROM film LIMIT 10;

--  zacznij od 150 rekordu nie właczając 150 i wyświetl 20 kolejnych
SELECT length, title FROM film LIMIT 150, 20;

SELECT title, length FROM film LIMIT 151;

DESC film;

SELECT title, rating FROM film WHERE rating = 'G';

SELECT title, length FROM film WHERE length > 120;

SELECT title, length FROM film WHERE length = 130;

SELECT title, length FROM film WHERE length != 130;

SELECT title FROM film WHERE length != 130;

SELECT title FROM film WHERE length != 130 LIMIT 5;