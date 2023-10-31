WITH same_price AS (SELECT m.pizza_name,
                           m.pizzeria_id,
                           m.price
                    FROM menu m
                             JOIN menu mn ON m.id != mn.id
                    WHERE m.price = mn.price
                      AND m.pizza_name = mn.pizza_name)
    (SELECT s.pizza_name,
            z.name  pizzeria_name_1,
            zz.name pizzeria_name_2,
            s.price
     FROM same_price s
              JOIN same_price sm ON s.price = sm.price
              JOIN pizzeria z ON s.pizzeria_id = z.id
              JOIN pizzeria zz ON sm.pizzeria_id = zz.id
     WHERE s.pizzeria_id > sm.pizzeria_id)
        ORDER BY 1;
