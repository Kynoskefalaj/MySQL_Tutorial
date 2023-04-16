USE books;

-- Podaj średnią ocenę książek każdego autora który ma na imię John, Dan, George lub William, uwzględnij tylko 
-- książki publikowane w latach nieparzystych

SELECT
	author,
    AVG(rating)
FROM books
WHERE SUBSTRING_INDEX(author, ' ', 1) IN ('John', 'Dan', 'George', 'William') AND publication_year % 2 = 1
GROUP BY author;
