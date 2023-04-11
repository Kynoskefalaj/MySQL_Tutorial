USE books;

SELECT REPLACE('MySQL is super!', 'super', 'extra');

-- CaseSensitive
SELECT REPLACE('MySQL is super!', 'Super', 'extra');


SELECT * FROM books;

SELECT
SUBSTRING(
	REPLACE(title, 'e', '3'),
    1, 10
)
FROM books;