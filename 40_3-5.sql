USE books;

SELECT
	title AS tytuł,
    SUBSTRING_INDEX(author, ' ', -1) AS nazwisko
FROM books
ORDER BY rating_no DESC
LIMIT 15;