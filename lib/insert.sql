INSERT INTO series (title, author_id, subgenre_id)
VALUES ("ABC", 1, 1),
("BCD", 2, 3);
 INSERT INTO books (title, year, series_id)
VALUES ("abc", 1922, 1),
("bcd", 1923, 2),
("cde", 1924, 3),
("def", 1925, 4),
("efg", 1926, 5),
("fgh", 1927, 6);
 INSERT INTO characters (name, species, motto, series_id, author_id)
VALUES ("john", "mammal", "no, pls", 1, 2),
("jack", "mammal", "yes, pls", 2, 2),
("jill", "mammal", "i'll have what she's having", 3, 2),
("johnathan", "unicorn", "that's what she said", 4, 2),
("jack", "mammal", "i got to flatiron", 5, 2),
("jacky", "mammal", "no, pls", 6, 2),
("jacqueline", "mammal", "no, pls", 7, 2),
("jason", "dinosaur", "no, pls", 8, 2);
 INSERT INTO subgenres (name)
VALUES ("laurel"), ("yannie");
 INSERT INTO authors (name)
VALUES ("windrunner"), ("crystal_maiden");
 INSERT INTO character_books (book_id, character_id)
VALUES (1, 2),
(3, 1),
(5, 1),
(7, 1),
(3, 2),
(6, 2),
(3, 2),
(4, 2),
(8, 2),
(4, 1),
(4, 1),
(7, 1),
(2, 1),
(5, 1),
(8, 1),
(2, 1);