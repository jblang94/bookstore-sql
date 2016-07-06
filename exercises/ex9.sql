SELECT
  editions.book_id,
  MAX(stock.stock) AS "Highest Stock"
FROM editions JOIN stock ON stock.isbn = editions.isbn
GROUP BY editions.book_id, stock.stock
ORDER BY stock.stock DESC
LIMIT 1;
