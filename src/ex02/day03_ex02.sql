WITH not_ordered_pizza AS (SELECT mn.id AS menu_id
                           FROM menu mn
                               EXCEPT
                           SELECT po.menu_id
                           FROM person_order po
                           ORDER BY 1)

SELECT mn.pizza_name,
       mn.price,
       zz.name pizzeria_name
FROM menu mn
         JOIN not_ordered_pizza nop ON mn.id = nop.menu_id
         JOIN pizzeria zz ON mn.pizzeria_id = zz.id
ORDER BY 1, 2;