USE sakila;
DESC customer;

SELECT * FROM customer LIMIT 10;

-- aktualizacja adresu email
UPDATE customer SET email = 'mary.smith@gmail.com' WHERE customer_id = 1;

UPDATE customer SET  last_name = 'Woodland' WHERE customer_id = 7;

USE fastest_animals;

SELECT * FROM fastest;

UPDATE fastest SET max_speed = 500 WHERE class = 'Flight';

-- usuwanie wiersza
DELETE FROM fastest WHERE animal = 'Rock dove';

DELETE FROM fastest WHERE class = 'flight-diving';