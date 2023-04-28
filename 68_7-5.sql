USE books;

DELETE FROM author WHERE last_name = "Orwell";

DROP TABLE book;
DROP TABLE author;


CREATE TABLE author
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name CHAR(20),
    last_name CHAR(20)
);
 
 
CREATE TABLE book
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    title CHAR(20),
    publication_year INT(4),
    author_id INT,
    FOREIGN KEY(author_id) REFERENCES author(id) ON DELETE CASCADE
);
 
 
INSERT INTO author(first_name, last_name)
VALUES
    ("George", "Orwell"),
    ("Bram", "Stoker"),
    ("Frank", "Herbert"),
    ("Stephen", "King") ,
    ("Charles", "Dickens");
 
 
INSERT INTO book(title, publication_year, author_id)
VALUES
    ("Animal Farm", 1945, 1),
    ("Dune", 1965, 3),
    ("Dracula", 1897, 2),
    ("The Stand", 1990, 4),
    ("1984", 1949, 1),
    ("The Shining", 1977, 4);
 
 
SELECT * FROM author;
SELECT * FROM book;