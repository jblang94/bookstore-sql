SELECT
    editions.isbn
FROM editions JOIN publishers ON publishers.id = editions.publisher_id
WHERE publishers.name = 'Random House';
