USE books;

SELECT
	title,
    rating,
    CASE
		WHEN rating > 4 THEN 'good book'
        ELSE 'good enough book'
	END AS type
FROM books;

SELECT
	title,
    rating,
    CASE
		WHEN rating > 4 THEN 'good book'
        ELSE 'good enough book'
	END AS type,
    author
FROM books;


SELECT
	title,
    rating,
    CASE
		WHEN rating > 4.2 THEN 'very good book'
        WHEN rating BETWEEN 3.8 AND 4.2 THEN 'good book'
        ELSE 'not that good book'
	END AS type,
    author
FROM books;


SELECT
	title,
    rating,
    IF(rating > 4, 'good book', 'not that good book'),
    author
FROM books;