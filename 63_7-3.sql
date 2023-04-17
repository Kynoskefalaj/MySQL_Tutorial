USE books;

-- cross join mnoży przypadki z obu tabel
SELECT * FROM orders, users;

SELECT * FROM orders, users WHERE users_id = users.id;

SELECT * FROM orders, basket WHERE orders_id = orders.id AND users_id = 1;