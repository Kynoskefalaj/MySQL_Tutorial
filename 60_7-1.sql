SELECT database();

USE books;
DESC books;
CREATE TABLE users
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    second_name VARCHAR(50) NOT NULL,
    email VARCHAR(255)NOT NULL,
    street VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    postcode VARCHAR(6) NOT NULL,
    phone INT(9) NOT NULL,
    register_date TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
);

DROP TABLE users;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\uzytkownicy.csv'
INTO TABLE users
CHARACTER SET utf8
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(first_name, second_name, email, street, city, postcode, phone);

SELECT * FROM users;