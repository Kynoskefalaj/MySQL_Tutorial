-- Znajdz tytuły książek, które zostały opublikowane nie wcześniej niż w 2005 roku oraz nie pózniej niż w 2010
USE books;

SELECT title FROM books WHERE publication_year BETWEEN 2005 AND 2010;

-- Oblicz średni rating książek wydanych pomiędzy 1990 a 2005, dla każdego roku wydawniczego, 
-- wyniki podaj chronologicznie

SELECT
	publication_year,
	AVG(rating)
FROM books
WHERE publication_year BETWEEN 1990 AND 2005
GROUP BY publication_year
ORDER BY AVG(rating) DESC;

-- Policz ile każdy z autorów dostał po jednej gwiazdce dla wszystkich swoich książek, ale uwzględnij
-- tylko te pozycje dla których oddano co najmniej milion głosów w sumie, lub umieszczono co najmniej 50 000
-- komentarzy

DESC books;

ALTER TABLE books RENAME COLUMN revievs_no TO reviews_no;

SELECT
	author,
    SUM(one_star) AS one_star_sum,
    SUM(reviews_no)
FROM books
WHERE rating_no >= 1000000000 OR reviews_no >= 50000
GROUP BY author
ORDER BY SUM(one_star) DESC;

SELECT author,
	title,
    reviews_no,
    rating_no
FROM books
WHERE author LIKE '%Meyer%';

-- Jaki procent wśród książek o ocenie co najmniej 4 stanowią oceny pięciogwiazdkowe?

SELECT 
	SUM(five_stars)/SUM(rating_no) * 100
FROM books
WHERE rating >= 4.0;

-- Jaka jest średnia ocena dla autorów których nazwiska są krótsze niż 6 albo dłuższe niż 10 znaków?

SELECT
	author,
	AVG(rating) AS średni_rating
FROM books
WHERE CHAR_LENGTH(SUBSTRING_INDEX(author, ' ', -1)) < 6 OR CHAR_LENGTH(SUBSTRING_INDEX(author, ' ', -1)) > 10
GROUP BY author
ORDER BY AVG(rating) DESC;

-- Dla każdego autora, dla każdego roku w którym opublikował książkę (lub książki) policz sumę
-- komentarzy do tych pozycji, uwzględnij tylko pozycje, które miały co najmniej 600 tys głosów, posortuj DESC

SELECT
	author,
    publication_year,
    SUM(reviews_no) AS sum_reviews_no,
    rating_no
FROM books
WHERE rating_no > 600000
GROUP BY author, publication_year
ORDER BY author DESC;


-- w poniższym przykładzie grupuje po roku wydania bez powtórek
SELECT
	author,
    publication_year,
    SUM(reviews_no) AS sum_reviews_no,
    rating_no
FROM books
WHERE rating_no > 600000
GROUP BY publication_year
ORDER BY 2 DESC;
    
-- Podaj listę autorów i tytułów książek wydanych w latach parzystych

SELECT
	author,
    title,
    publication_year
FROM books
WHERE publication_year % 2 = 0;



