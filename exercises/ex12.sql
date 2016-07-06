SELECT
  books.title AS "Title"
FROM books JOIN editions ON books.id = editions.book_id
GROUP BY books.title
HAVING SUM(
            CASE WHEN editions.type = 'p' THEN 1
            ELSE 0 END ) > 0
       AND
       SUM(
            CASE WHEN editions.type = 'h' THEN 1
            ELSE 0 END ) > 0;
