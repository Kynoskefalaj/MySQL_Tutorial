USE books;

SELECT SUBSTRING('MySQL is super', 7, 2);

SELECT SUBSTRING('MySQL is super', 3, 11);

SELECT SUBSTRING('MySQL is super', 7);

SELECT SUBSTRING('MySQL is super', -4);

SELECT SUBSTRING(title, 1, 12) FROM books;
SELECT SUBSTR(title, 1, 12) FROM books;

SELECT CONCAT
(
	SUBSTRING(title, 1, 7),
    '...'
)
FROM books;

