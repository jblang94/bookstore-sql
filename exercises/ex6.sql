SELECT
  books.title AS "Book Title",
  editions.publication AS "Publication Date"
FROM books JOIN editions ON books.id = editions.book_id;
