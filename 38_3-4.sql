USE books;

SELECT
	LOWER(
		SUBSTRING_INDEX(author, ' ', 1)
	) AS name,
    CHAR_LENGTH(
		SUBSTRING_INDEX(author, ' ', 1)
	) AS name_length
FROM books;