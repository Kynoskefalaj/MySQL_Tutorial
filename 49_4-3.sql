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
    SUM(rating_no) AS "ilość ocen"
FROM books
GROUP BY author
ORDER BY SUM(rating_no) DESC
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