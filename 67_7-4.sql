USE books;

SELECT * FROM author;

SELECT * FROM book;

SELECT * FROM author INNER JOIN book ON author.id = book.author_id;

SELECT * FROM author LEFT JOIN book ON author.id = book.author_id;

SELECT * FROM author RIGHT JOIN book ON author.id = book.author_id;

-- FULL OUTER JOIN
SELECT * FROM author LEFT JOIN book ON author.id = book.author_id
UNION
SELECT * FROM author RIGHT JOIN book ON author.id = book.author_id;

DESC author;
DELETE FROM author WHERE first_name = 'George';

DROP TABLE author;

DROP TABLE book;