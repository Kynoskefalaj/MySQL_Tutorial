USE books;

DESC basket;

SELECT
	orders_id,
    COUNT(books_id)
FROM basket
GROUP BY orders_id;

SELECT
	orders_id,
    COUNT(*)
FROM basket, books
WHERE books_id = books.id
GROUP BY orders_id;