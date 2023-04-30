USE books;

SELECT * FROM orders, users WHERE users_id = users.id;

SELECT * FROM basket, orders
WHERE orders_id = orders.id 
AND users_id = 1;

SELECT id FROM orders;

SELECT * FROM orders;
SELECT * FROM basket;

SELECT 
	orders.id,
	users.street, 
    users.city, 
    users.postcode 
FROM orders 
LEFT JOIN users 
ON orders.users_id = users.id;

SELECT * FROM orders 
RIGHT JOIN users 
ON orders.users_id = users.id 
WHERE users_id = 1;