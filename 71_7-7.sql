USE books;

SELECT * FROM orders 
JOIN basket 
ON orders.id = basket.orders_id
JOIN books
ON basket.books_id = books.id;

DESC users;
SELECT users.first_name, users.second_name, books.title
FROM users
	JOIN orders ON users.id = orders.users_id
    JOIN basket ON users.id = basket.orders_id
    JOIN books ON basket.books_id = books.id;