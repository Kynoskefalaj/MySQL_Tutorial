USE books;

-- W bazie danych jest kilka błędów. Dla paru książek suma oddanych głosów oraz suma głosów na poszczególną ocenę 
-- się nie zgadza. 
-- Zidentyfikuj tytuły książek o których jest mowa
-- Napisz formułę, która sprawdzi powyższy warunek i dla każdej pozycji dla której suma głosów jest inna niż suma głosów na
-- poszczególną ilość gwiazdek, zaktualiuzuje ten atrybut do liczby będącej prawidłową sumą.

SELECT
	author,
    title,
    -- one_star, two_stars, three_stars, four_stars, five_stars, 
    rating_no,
    one_star + two_stars + three_stars + four_stars + five_stars AS sum_stars,
    rating_no = one_star + two_stars + three_stars + four_stars + five_stars AS check_sum
FROM books
ORDER BY check_sum;


SELECT
	author,
    title,
    -- one_star, two_stars, three_stars, four_stars, five_stars, 
    rating_no,
    one_star + two_stars + three_stars + four_stars + five_stars AS sum_stars,
    rating_no = one_star + two_stars + three_stars + four_stars + five_stars AS check_sum
FROM books
WHERE rating_no != one_star + two_stars + three_stars + four_stars + five_stars
ORDER BY check_sum;


UPDATE books
SET rating_no = one_star + two_stars + three_stars + four_stars + five_stars
WHERE rating_no != one_star + two_stars + three_stars + four_stars + five_stars;