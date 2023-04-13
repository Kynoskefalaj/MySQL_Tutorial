USE books;

SELECT author, 
	COUNT(*) AS 'ile książek'
FROM books
GROUP BY author
ORDER BY author;