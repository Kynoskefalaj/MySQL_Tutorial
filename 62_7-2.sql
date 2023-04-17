USE books;

CREATE TABLE orders
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    users_id INT,
    order_date TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (users_id) REFERENCES users(id)
);

DESC books;
DESC users;

-- dodawanie indeksu w tabeli books po ISBN
-- CREATE INDEX idx_books_ISBN ON books (ISBN);

CREATE TABLE basket
(
	orders_id INT,
    books_id INT,
    FOREIGN KEY (orders_id) REFERENCES orders(id),
    FOREIGN KEY (books_id) REFERENCES books(id)
);

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\zamowienia.csv'
INTO TABLE orders
CHARACTER SET utf8
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(id, users_id);

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\koszyk.csv'
INTO TABLE basket
CHARACTER SET utf8
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(orders_id, books_id);

SELECT * FROM basket;
