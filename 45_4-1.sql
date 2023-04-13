USE books;

DESC books;

-- policz ile książek zostało opublikowanych w 2012 roku
SELECT * FROM books WHERE publication_year = 2012;
SELECT COUNT(*) FROM books WHERE publication_year = 2012;

-- Policz ile książek w naszej bazie zostało napisanych przez autora o imieniu John
SELECT * FROM books WHERE SUBSTRING_INDEX(author, ' ', 1) LIKE 'john';
SELECT COUNT(*) FROM books WHERE SUBSTRING_INDEX(author, ' ', 1) LIKE 'john';