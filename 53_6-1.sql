SELECT 5 = 1;
SELECT 1 = 1;

SELECT 1 != 0;

SELECT 1 > 0;

SELECT 1 <= 3;
USE books;
SELECT title, publication_year FROM books WHERE publication_year >= 2000;

SELECT title, publication_year FROM books WHERE publication_year != 2009;

DESC books;

DESC books;

SELECT 
	title,
    publication_year,
    rating
FROM books
WHERE publication_year > 2010 AND rating > 4.0;

SELECT 
	title,
    publication_year,
    rating
FROM books
WHERE publication_year BETWEEN 2000 AND 2010;


SELECT 
	title,
    publication_year,
    rating
FROM books
WHERE publication_year NOT BETWEEN 2000 AND 2010;

SELECT author, title FROM books WHERE author LIKE '%Adam%';
SELECT author, title FROM books WHERE author NOT LIKE '%John%';