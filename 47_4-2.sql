USE books;

--  Policz liczbę książek wydanych w różnych latach, wynik podaj w kolejności malejącej według liczby książek

SELECT publication_year,
	COUNT(*) AS 'liczba książek'
FROM books
GROUP BY publication_year
ORDER BY 'liczba książek' DESC;