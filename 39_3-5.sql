USE books;

-- sortowanie rosnąco (domyślnie)
SELECT 
	title AS tytuł,
    rating AS ocena
FROM books
ORDER BY rating;

-- sortowanie malejąco 
SELECT 
	title AS tytuł,
    rating AS ocena
FROM books
ORDER BY rating DESC
LIMIT 10;

SELECT
	author AS autor,
	title AS tytuł,
    rating AS ocena,
    publication_year AS 'rok wydania',
    isbn
FROM books
ORDER BY 4 DESC;
    