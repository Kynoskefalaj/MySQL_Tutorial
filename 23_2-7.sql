-- Zaktualizuj adres email uzytkownika Amy Lopez (sakila.customer 32 pozycja) na:
-- Lopez.A@yahoo.com nastepnie usuń z bazy Annę Hill (kolejny użytkownik). Upewnij się, że usuwasz tylko tego użytkownika 
-- a nie wszystkie Amy lub wszystkich o nazwisku Hill

USE sakila;

DESC customer;

SELECT * FROM customer WHERE customer_id = 33;

UPDATE customer SET email = 'Lopez.A@yahoo.com' WHERE customer_id = 32;

DELETE FROM customer WHERE customer_id = 33;