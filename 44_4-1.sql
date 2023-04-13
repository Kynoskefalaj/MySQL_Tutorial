USE books;

SELECT COUNT(*) FROM books;

SELECT COUNT(DISTINCT author) FROM books;

SELECT COUNT(*) FROM books WHERE title LIKE '%the%';

SELECT COUNT(*) 
FROM books 
WHERE CHAR_LENGTH(SUBSTRING_INDEX(author, ' ', -1)) = 6;

SELECT COUNT(DISTINCT SUBSTRING_INDEX(author, ' ', -1)) AS 'unikalne nazwiska'
FROM books 
WHERE CHAR_LENGTH(SUBSTRING_INDEX(author, ' ', -1)) = 6;