USE books;

SELECT CURDATE();

SELECT CURTIME();

SELECT NOW();

SELECT DAY(NOW());
SELECT DAY('2017-10-19');

SELECT DAYNAME(NOW());

SELECT DAYOFWEEK(NOW());

SELECT DAYOFYEAR(NOW());

SELECT MONTH(NOW());

SELECT MONTHNAME(NOW());

SELECT HOUR(NOW());
SELECT MINUTE(NOW());
SELECT SECOND(NOW());

SELECT DATE_FORMAT('2010-05-01 14:32:11', '%d/%m/%y');
SELECT DATE_FORMAT('2010-05-01 14:32:11', '%M-%D-%Y, %H:%i');