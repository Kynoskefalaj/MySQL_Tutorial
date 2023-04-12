USE books;

SELECT * FROM books WHERE author LIKE 'john tolkien';

SELECT * FROM books WHERE author LIKE 'john%';

SELECT * FROM books WHERE author LIKE '%en';

-- nie są case sensitive
SELECT * FROM books WHERE author LIKE '%liN%';

SELECT SUBSTRING_INDEX(author, ' ', 1) FROM books WHERE CHAR_LENGTH(SUBSTRING_INDEX(author, ' ', 1)) = 4;

SELECT * FROM books WHERE title LIKE '%%%';