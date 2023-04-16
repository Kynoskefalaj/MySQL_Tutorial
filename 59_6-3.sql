USE books;

-- Zastosuj formatowanie warunkowe aby przypisać liczbę gwiazdek książce według jej oceny. Zastosuj
-- następujące kryteria:
-- ***** dla rating => 4.5
-- **** dla rating => 4.0 i < 4.5
-- **** dla rating => 3.5 i < 4.0
-- *** dla rating => 2.5 i < 3.5
-- ** dla rating => 2.0 i < 2.5
-- * dla pozostałych

-- Dodaj hasztagi książkom według epok literackich:
-- <= 1492 #średniowiecze
-- <= 1520 #renesans
-- <= 1680 #barok
-- <= 1789 #oświecenie
-- <= 1850 #romantyzm
-- <= 1880 #pozytywizm
-- <= 1918 #modernizm
-- <= 1939 #literatura_miedzywojenna
-- po 1939 #literatura_współczesna

-- oraz oznacz czy użytkownicy częściej wybierają 1 do 4 gwiazdek jako (przeważnie mniej niż 5 gwiazdek),
-- czy 5 gwiazdek (przeważnie 5 gwiazdek)

DESC books;
SELECT 
	author,
	title,
    CASE
		WHEN rating >= 4.5 THEN '*****'
        WHEN rating >= 3.5 AND rating < 4.5 THEN '****'
        WHEN rating >= 2.5 AND rating < 3.5 THEN '***'
        WHEN rating >= 2.0 AND rating < 2.5 THEN '**'
        ELSE '*'
	END AS stars,
    CASE
		WHEN publication_year <= 1492 THEN '#średniowiecze'
        WHEN publication_year <= 1520 AND publication_year > 1492 THEN '#renesans'
        WHEN publication_year <= 1680 AND publication_year > 1520 THEN '#barok'
        WHEN publication_year <= 1789 AND publication_year > 1680 THEN '#oświecenie'
        WHEN publication_year <= 1850 AND publication_year > 1789 THEN '#romantyzm'
        WHEN publication_year <= 1880 AND publication_year > 1850 THEN '#pozytywizm'
        WHEN publication_year <= 1918 AND publication_year > 1880 THEN '#modernizm'
        WHEN publication_year <= 1939 AND publication_year > 1918 THEN '#literatura_międzywojenna'
        WHEN publication_year > 1939 THEN '#literatura_współczesna'
	END AS era,
    publication_year,
	IF(rating_no - five_stars > five_stars, 'mostly less then 5 stars', 'mostly 5 stars')
FROM books;

-- sprawdzam czy zapis BETWEEN ... AND ... uwzględnia wpisane wartości (include, zatem rozwiązanie 
-- w kursie jest błedne)
SELECT *,
	CASE
		WHEN publication_year BETWEEN 1595 AND 1811 THEN 'lol'
        ELSE 'bup'
	END
FROM books;
