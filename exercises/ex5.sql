SELECT
  editions.isbn,
  books.title AS "Book Title",
  stock.stock,
  stock.retail AS "Retail Price",
  CASE WHEN editions.type = 'p' THEN 'paperback'
       WHEN editions.type = 'h' THEN 'hardcover'
  END AS "Edition Type"
FROM editions JOIN publishers ON publishers.id = editions.publisher_id
              JOIN books ON books.id = editions.book_id
              JOIN stock ON stock.isbn = editions.isbn
WHERE publishers.name = 'Random House' AND stock.stock > 0;
