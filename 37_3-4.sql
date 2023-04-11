USE books;

SELECT REVERSE('MySQL is great!');

SELECT REVERSE(author) FROM books;

SELECT CHAR_LENGTH('MySQL is great!');

SELECT title, CHAR_LENGTH(title) AS 'dlugosc tytulu' FROM books;

SELECT UPPER('MySQL is great!');

SELECT LOWER('MySQL is great!');

SELECT author FROM books;

-- rozbijanie tekstu
SELECT 
	SUBSTRING_INDEX(author, ' ', 1) AS first_name, 
    SUBSTRING_INDEX(author, ' ', -1) AS last_name
FROM books;

-- unikalne wartości
SELECT DISTINCT publication_year FROM books;