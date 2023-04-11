USE books;

SELECT title, publication_year FROM books
INTO OUTFILE 'titles_years.csv'
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n';

SELECT * FROM books;

