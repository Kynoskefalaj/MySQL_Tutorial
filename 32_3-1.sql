USE books;

SELECT CONCAT(author, title) FROM books LIMIT 5;

SELECT CONCAT(author, '-', title, '-', publication_year) FROM books LIMIT 5;

SELECT CONCAT_WS(' - ', author, title, publication_year) AS 'autor - tytuł - rok wydania'
FROM books LIMIT 5;