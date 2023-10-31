SELECT zz.name
FROM person p
         JOIN person_visits pv ON p.id = pv.person_id
         JOIN pizzeria zz ON pv.pizzeria_id = zz.id
WHERE p.name IN ('Andrey')
EXCEPT ALL
SELECT zz.name
FROM person p
         JOIN person_order po ON p.id = po.person_id
         JOIN menu mn ON po.menu_id = mn.id
         JOIN pizzeria zz ON mn.pizzeria_id = zz.id
WHERE p.name IN ('Andrey');