USE books;

SELECT * FROM author LEFT JOIN book ON author.id = book.author_id;

SELECT * FROM author LEFT JOIN book ON author.id = book.author_id
WHERE book.author_id IS NULL;

SELECT * FROM author RIGHT JOIN book ON author.id = book.author_id;

SELECT * FROM author RIGHT JOIN book ON author.id = book.author_id
WHERE book.author_id IS NULL;

SELECT * FROM author INNER JOIN book ON author.id = book.author_id;

SELECT * FROM author JOIN book ON author.id = book.author_id;

-- wszystkie możliwe kombinacje ilość rekordów z jednej tabeli jest przemnożona przez ilość w drugiej
SELECT * FROM author, book;

SELECT * FROM author CROSS JOIN book;

-- zwraca wszystkie rekordy z obu tabel

SELECT * FROM author LEFT JOIN book ON author.id = book.author_id
UNION
SELECT * FROM author RIGHT JOIN book ON author.id = book.author_id;

