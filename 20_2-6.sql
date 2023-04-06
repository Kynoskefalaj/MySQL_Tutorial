-- Wybierz z tebeli customer dostepnej w bazie sakila oraz wylistuj przy pomocy aliasow imie i nazwisko
-- użytkownika, jego adres email oraz date rejestracji (przyjmij date utworzenia z bazy)
-- Ogranicz wynik do 15 uzytkownikow rozpoczynajac od uzytkownika 100 (Robin Hayes).

USE sakila;

DESC customer;

SELECT 
	first_name AS 'imię',
    last_name AS 'nazwisko',
    email,
    create_date AS 'data rejestracji'
FROM customer
LIMIT 99, 15;