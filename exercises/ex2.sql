SELECT
editions.isbn,
books.title AS "Book Title"
FROM editions JOIN publishers ON publishers.id = editions.publisher_id
              JOIN books ON books.id = editions.book_id
WHERE publishers.name = 'Random House';
