SELECT
    ROUND(AVG(stock.retail)) AS "Average Book Sale Price",
    COUNT(editions.publication) AS "Number of Editions Published"
FROM editions JOIN publishers ON publishers.id = editions.publisher_id
              JOIN stock on stock.isbn = editions.isbn
GROUP BY publishers.id;
