CREATE TABLE fastest
(
	animal CHAR(20) NOT NULL,
    max_speed INT,
    state CHAR(10)
);

DESC fastest;

INSERT INTO fastest (animal, max_speed, state)
VALUES ('Sokol Wedrowny', 390, 'nurkowanie');

INSERT INTO fastest (animal, max_speed)
VALUES ('Orzel Zloty', 320);

INSERT INTO fastest (max_speed, state)
VALUES (390, 'nurkowanie');

DROP TABLE fastest;

CREATE TABLE fastest
(
	animal CHAR(20) NOT NULL DEFAULT 'nienazwany',
    max_speed INT,
    state CHAR(10) NOT NULL DEFAULT 'nie podano'
);

SELECT * FROM fastest;

CREATE TABLE unikaty_najszybsze
(
	zwierze_id INT NOT NULL,
    zwierze CHAR(20) DEFAULT 'nienzwany',
    max_predkosc INT NOT NULL,
    stan CHAR(10) DEFAULT 'nie podano',
    PRIMARY KEY(zwierze_id)
);

DESC unikaty_najszybsze;

INSERT INTO unikaty_najszybsze(zwierze_id, zwierze, max_predkosc, stan)
VALUES (1, 'Sokol Wedrowny', 390, 'nurkowanie');

INSERT INTO unikaty_najszybsze(zwierze_id, zwierze, max_predkosc, stan)
VALUES (2, 'Orzel Zloty', 320, 'nurkowanie');

DROP TABLE unikaty_najszybsze;


CREATE TABLE unikaty_najszybsze
(
	zwierze_id INT AUTO_INCREMENT PRIMARY KEY,
    zwierze CHAR(20) DEFAULT 'nienzwany',
    max_predkosc INT NOT NULL,
    stan CHAR(10) DEFAULT 'nie podano'
);

INSERT INTO unikaty_najszybsze(zwierze, max_predkosc, stan)
VALUES ('Sokol Wedrowny', 390, 'nurkowanie');

INSERT INTO unikaty_najszybsze(zwierze, max_predkosc, stan)
VALUES ('Orzel Zloty', 320, 'nurkowanie');

SELECT * FROM unikaty_najszybsze;

INSERT INTO unikaty_najszybsze (zwierze_id, zwierze, max_predkosc)
VALUES (173, 'Kobuz', 160);

INSERT INTO unikaty_najszybsze (zwierze, max_predkosc)
VALUES ('Gepard', 120);

SELECT * FROM unikaty_najszybsze;