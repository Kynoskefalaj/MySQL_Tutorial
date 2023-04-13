USE books;

--  minimum
SELECT MIN(rating) FROM books;

SELECT rating FROM books ORDER BY rating LIMIT 1;

SELECT MAX(rating) FROM books;

SELECT author, title, rating FROM books ORDER BY rating LIMIT 1;
--  błędne zapytanie
SELECT author, title, MIN(rating) FROM books;

SELECT author, title, rating FROM books WHERE title LIKE 'the help';

SELECT * FROM books LIMIT 5;

DESC books;
-- 
SELECT author, title, rating FROM books WHERE rating = (SELECT MIN(rating) FROM books);

SELECT SUM(rating_no) FROM books;
--  zle
SELECT author, SUM(rating_no) FROM books;

SELECT author, SUM(rating_no) AS ilosc, COUNT(*) FROM books GROUP BY author ORDER BY ilosc DESC;

SELECT AVG(rating_no) FROM books;

SELECT 
	publication_year, 
    ROUND(AVG(rating), 3),
    COUNT(*)
FROM books
WHERE publication_year % 2 = 0
GROUP BY publication_year
ORDER BY AVG(rating) DESC;

SELECT ROUND(4.2574534, 2);

SELECT 13 % 2;

SELECT 13 % 5;

