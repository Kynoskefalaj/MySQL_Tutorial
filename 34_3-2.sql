USE books;

SELECT CONCAT
( 
	CONCAT
	(SUBSTRING(author, 1, 5), '...'), 
    ' - ', 	
CONCAT
	(SUBSTRING(title, 1, 10), '...')
) 
    FROM books;
