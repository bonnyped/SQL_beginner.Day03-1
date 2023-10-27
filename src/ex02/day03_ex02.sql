SELECT mn.pizza_name,
       mn.price,
       zz.name pizzeria_name
FROM menu mn, pizzeria zz
WHERE mn.id IN (SELECT mn.id AS menu_id
             FROM menu mn
             WHERE mn.id NOT IN (SELECT po.menu_id
                                 FROM person_order po))
ORDER BY 1,2;