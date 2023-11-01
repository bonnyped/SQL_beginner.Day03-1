INSERT INTO menu (id, pizzeria_id, pizza_name, price)
VALUES ((select max(id + 1)
         from menu), (select zz.id
                      from pizzeria zz
                      where name in ('Dominos')), 'sicilian pizza', 900)
RETURNING *;
