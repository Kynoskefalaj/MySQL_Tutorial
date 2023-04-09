CREATE DATABASE books;

USE books;

CREATE TABLE books
(
	author VARCHAR(40),
    title VARCHAR(80),
    publication_year INT,
    ISBN LONG,
    rating LONG,
    rating_no INT,
    revievs_no LONG,
	one_star INT,
    two_stars INT,
    three_stars INT,
    four_stars INT,
    five_stars INT
);

DESC books;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\ksiazki.csv'
INTO TABLE books
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

DROP TABLE books;

SELECT * FROM books;

	