DELETE
FROM person_order
WHERE order_date = '2022-02-25'
RETURNING *;

DELETE
FROM menu
WHERE pizza_name = 'greek pizza'
RETURNING *;