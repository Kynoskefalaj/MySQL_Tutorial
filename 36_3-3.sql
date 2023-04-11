USE books;

SELECT
	REPLACE
	(
		REPLACE
		(
			REPLACE
            (
				REPLACE
                (
					REPLACE
                    (title, 'e', '3'), 
				'a', '4'),
			't', '7'),
		'b', '8'),
	's', '5')
FROM books
LIMIT 15;