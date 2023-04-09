USE fastest_animals;

CREATE TABLE fastest_file
(
	zwierze CHAR(30),
    predkosc INT,
    klasa CHAR(20)
);

SHOW VARIABLES LIKE 'secure_file_priv';

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\fastest_file.csv'
 INTO TABLE fastest_file
 FIELDS TERMINATED BY ','
 LINES TERMINATED BY '\r\n';
 
 SELECT * FROM fastest_file;
 
 CREATE TABLE fastest_file2
 (
	zwierze CHAR(30),
    predkosc DEC(4,1),
    klasa CHAR(20)
);

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\fastest_utf8.csv'
INTO TABLE fastest_file2
CHARACTER SET utf8
FIELDS TERMINATED BY ';'
-- Nie uwzględniaj znaku " jako części pola \/
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
-- ignoruj nagłówki
IGNORE 1 LINES
-- @predkosc tworzy tymczasową kolumnę dzięki której można edytować
(zwierze, @predkosc, @klasa)
SET predkosc =  REPLACE(@predkosc, ',', '.'),
	klasa = IF(@klasa = '', NULL, @klasa);
    
SELECT * FROM  fastest_file2;