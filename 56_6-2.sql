USE books;

SELECT CAST('2010-05-01' AS DATE);
SELECT CAST(10 AS CHAR);

SELECT
	SUBSTRING_INDEX(author, ' ', 1) AS first_name,
    SUBSTRING_INDEX(author, ' ', -1) AS last_name,
    title,
    publication_year
FROM books
WHERE SUBSTRING_INDEX(author, ' ', -1) = 'Tolkien' OR
	SUBSTRING_INDEX(author, ' ', -1) = 'Rowling' OR
    SUBSTRING_INDEX(author, ' ', -1) = 'King' OR
    SUBSTRING_INDEX(author, ' ', -1) = 'Orwell';
    
SELECT
	SUBSTRING_INDEX(author, ' ', 1) AS first_name,
    SUBSTRING_INDEX(author, ' ', -1) AS last_name,
    title,
    publication_year
FROM books
WHERE SUBSTRING_INDEX(author, ' ', -1) IN ('Tolkien', 'Rowling', 'King', 'Orwell');