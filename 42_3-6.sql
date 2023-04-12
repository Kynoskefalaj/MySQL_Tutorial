USE books;

SELECT * FROM books WHERE title LIKE '%the%';

SELECT author FROM books WHERE CHAR_LENGTH(SUBSTRING_INDEX(author, ' ', -1)) = 6;

SELECT UPPER(SUBSTRING_INDEX(author, ' ', 1)) AS IMIĘ 
    FROM books 
    WHERE SUBSTRING_INDEX(author, ' ', 1) 
    LIKE 'E%';