SELECT
  authors.id AS "ID",
  authors.first_name || ' ' || authors.last_name AS "Full Name",
  COUNT(books.author_id)
FROM authors JOIN books ON authors.id = books.author_id
GROUP BY
  authors.id,
  books.author_id
ORDER BY COUNT(books.author_id) DESC;
