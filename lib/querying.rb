def select_books_titles_and_years_in_first_series_order_by_year
  "Write your SQL query here"
  "SELECT books.title, books.year
  FROM books
  WHERE series_id = 1
  ORDER BY year ASC"
end
 def select_name_and_motto_of_char_with_longest_motto
  "Write your SQL query here"
  "SELECT name, motto
  FROM characters
  ORDER BY length(motto)
  DESC LIMIT 1;"
end
 def select_value_and_count_of_most_prolific_species
  "Write your SQL query here"
  "SELECT species, count(species)
  FROM characters
  GROUP BY species
  ORDER BY count(species)
  DESC LIMIT 1;"
end
 def select_name_and_series_subgenres_of_authors
  "Write your SQL query here"
  "SELECT authors.name, subgenres.name
  FROM authors
  JOIN series
  ON series.author_id = authors.id
  JOIN subgenres
  ON series.subgenre_id = subgenres.id"
end
 def select_series_title_with_most_human_characters
  "Write your SQL query here"
  "SELECT series.title
  FROM series
  JOIN characters
  ON characters.series_id = series.id
  WHERE characters.species = 'human'
  GROUP BY series.title
  ORDER BY COUNT(characters.name)
  DESC LIMIT 1"
end
 def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
  "SELECT characters.name,
  COUNT(books.title)
  FROM character_books
  JOIN characters
  ON characters.id = character_books.character_id
  JOIN books
  ON books.id = character_books.book_id
  GROUP BY characters.name
  ORDER BY COUNT(books.title) DESC"
end
     


-- CREATE TABLE series (
--     id INTEGER PRIMARY KEY,
--     title TEXT,
--     author_id INTEGER,
--     subgenre_id INTEGER
--   );
  -- CREATE TABLE series (id INTEGER PRIMARY KEY, title TEXT, author_id INTEGER, subgenre_id INTEGER);
 CREATE TABLE series (
  id INTEGER PRIMARY KEY,
  title TEXT,
  author_id INTEGER,
  subgenre_id INTEGER
);
 CREATE TABLE subgenres (
  id INTEGER PRIMARY KEY,
    name TEXT
  );
 CREATE TABLE authors (
  id INTEGER PRIMARY KEY,
    name TEXT
  );
 CREATE TABLE books (
  id INTEGER PRIMARY KEY,
    title TEXT,
    year INTEGER,
    series_id INTEGER
  );
 CREATE TABLE characters (
  id INTEGER PRIMARY KEY,
    name TEXT,
    species TEXT,
    motto TEXT,
    series_id INTEGER,
    author_id INTEGER
  );
 CREATE TABLE character_books (
  id INTEGER PRIMARY KEY,
    book_id INTEGER,
    character_id INTEGER
  );
