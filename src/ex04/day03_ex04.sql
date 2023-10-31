WITH female_orders AS (SELECT zz.name pizzeria_name
                       FROM person p
                                JOIN person_order po ON p.id = po.person_id
                                JOIN menu mn ON po.menu_id = mn.id
                                JOIN pizzeria zz ON mn.pizzeria_id = zz.id
                       WHERE p.gender IN ('female')
                           EXCEPT
                       SELECT zz.name
                       FROM person p
                                JOIN person_order po ON p.id = po.person_id
                                JOIN menu mn ON po.menu_id = mn.id
                                JOIN pizzeria zz ON mn.pizzeria_id = zz.id
                       WHERE p.gender IN ('male')),
     male_orders AS (SELECT zz.name
                     FROM person p
                              JOIN person_order po ON p.id = po.person_id
                              JOIN menu mn ON po.menu_id = mn.id
                              JOIN pizzeria zz ON mn.pizzeria_id = zz.id
                     WHERE p.gender IN ('male')
                         EXCEPT
                     SELECT zz.name
                     FROM person p
                              JOIN person_order po ON p.id = po.person_id
                              JOIN menu mn ON po.menu_id = mn.id
                              JOIN pizzeria zz ON mn.pizzeria_id = zz.id
                     WHERE p.gender IN ('female')
     )
SELECT *
FROM female_orders
UNION
SELECT *
FROM male_orders;
