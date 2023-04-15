CREATE DATABASE books;

USE books;


DROP TABLE books;

CREATE TABLE books
(
	author CHAR(40),
    title VARCHAR(150),
    publication_year INT,
    ISBN CHAR(13),
    rating DEC(3,2),
    rating_no INT,
    revievs_no INT,
	one_star INT,
    two_stars INT,
    three_stars INT,
    four_stars INT,
    five_stars INT
);

DESC books;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\ksiazki.csv'
INTO TABLE books
CHARACTER SET utf8
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(author, title, publication_year, ISBN, @rating, rating_no, revievs_no, one_star, two_stars, 
three_stars, four_stars, five_stars)
SET rating = REPLACE(@rating, ',', '.');

DROP TABLE books;

SELECT * FROM books WHERE rating > 4.0;

	