SELECT
  editions.isbn,
  books.title AS "Book Title",
  stock.stock,
  stock.retail AS "Retail Price"
FROM editions JOIN publishers ON publishers.id = editions.publisher_id
              JOIN books ON books.id = editions.book_id
              JOIN stock ON stock.isbn = editions.isbn
WHERE publishers.name = 'Random House';
