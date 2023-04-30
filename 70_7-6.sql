USE books;

-- Wylistuj numery zamówień i zamówione książki (połącz używając konstrukcji JOIN 
-- tabele: koszyk i książki)

SELECT orders_id, title FROM basket
INNER JOIN books ON basket.books_id = books.id;

-- Znajdz numery zamówień, gdzie kupiono książkę o Harrym Potterze

SELECT orders_id, title FROM basket
INNER JOIN books ON basket.books_id = books.id
WHERE title LIKE '%Potter%';

-- Wypisz adresy email użytkowników, którzy nie złożyli jeszcze zamówienia w naszym sklepie aby wysłać
-- im kupon promocyjny na pierwsze zakupy.

SELECT * FROM users
LEFT JOIN orders ON users.id = orders.users_id
WHERE orders.id IS NULL;

-- Wylistuj kwszystkich użytkowników z Warszawy i powiąż ich z ich zamówieniami.

SELECT * FROM users
LEFT JOIN orders on users.id = orders.users_id
WHERE users.city = 'Warszawa';