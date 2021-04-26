def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books
  WHERE series_id = 1;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters
  ORDER BY motto LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) FROM characters
  GROUP BY 1
  ORDER BY 2 DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM series
  JOIN authors
  ON series.author_id = authors.id
  JOIN subgenres
  ON series.subgenre_id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM character_books
  JOIN books
  ON character_books.book_id = books.id
 JOIN series 
ON books.series_id = series.id
JOIN characters
ON character_books.character_id = characters.id
JOIN authors
  ON  characters.author_id = authors.id
WHERE characters.species = 'human' 
GROUP BY 1
ORDER BY COUNT(1) DESC LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(book_id) FROM character_books
  JOIN books
  ON character_books.book_id = books.id
 JOIN series 
ON books.series_id = series.id
JOIN characters
ON character_books.character_id = characters.id
JOIN authors
  ON  characters.author_id = authors.id
GROUP BY 1 
ORDER BY 2 DESC, characters.name ASC ;"
end
