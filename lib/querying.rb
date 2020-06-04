def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year
   FROM books
   WHERE series_id = 1 ORDER BY(books.year)"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto
   FROM characters
   WHERE characters.motto = (SELECT MIN(characters.motto) FROM characters);"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(characters.species)
   FROM characters GROUP BY (characters.species) ORDER BY(characters.species) DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
    FROM authors, subgenres
    INNER JOIN series
    ON authors.id = series.author_id WHERE series.subgenre_id = subgenres.id;
   "
end

def select_series_title_with_most_human_characters
  "SELECT series.title
   FROM series
   INNER JOIN books
   ON series.id = books.series_id
   JOIN characters_books
   "
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
end
