USE books;

-- Podaj rok pierwszej publikacji każdego autora

SELECT
	author,
    MIN(publication_year) AS debiut, 
    COUNT(*) AS ilość
FROM books
GROUP BY author;

-- Podaj listę 10 najczęściej komentowanych autorów

DESC books;

SELECT 
	author,
    SUM(revievs_no) AS "ilość ocen"
FROM books
GROUP BY author
ORDER BY SUM(revievs_no) DESC
LIMIT 10;

DESC books;
-- Podaj imię i nazwisko autora oraz policz średnią liczbę jednej i pięciu gwiazdek każdego z nich, wyniki
-- uporządkuj alfabetycznie według samych nazwisk autorów a średnie zaokrąglij do liczby całkowitej.

SELECT
	SUBSTRING_INDEX(author, ' ', 1) AS imię,
    SUBSTRING_INDEX(author, ' ', -1) AS nazwisko,
    ROUND(AVG(one_star), 0) AS oneStar,
    ROUND(AVG(five_stars), 0) AS fiveStar
FROM books
GROUP BY author
ORDER BY nazwisko;


































-- -- -- -- -- -- -- 

USE books;

DESC books;

SELECT 
	author,
    MIN(publication_year)
FROM books
GROUP BY author;

SELECT
	author,
    SUM(revievs_no) AS 'liczba komentarzy'
FROM books
GROUP BY author
ORDER BY SUM(revievs_no) DESC
LIMIT 10;
    
SELECT
	SUBSTRING_INDEX(author, ' ', 1) AS name,
    SUBSTRING_INDEX(author, ' ', -1) AS surname,
    ROUND(AVG(one_star), 0) AS OS,
    ROUND(AVG(five_stars), 0 ) AS FS
FROM books
GROUP BY author
ORDER BY surname;
