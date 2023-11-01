SELECT pizza_name,
       price,
       zz.name pizzeria_name,
       visit_date
FROM menu mn
         RIGHT JOIN person_visits pv ON pv.pizzeria_id = mn.pizzeria_id
         JOIN person p ON pv.person_id = p.id
         JOIN pizzeria zz ON zz.id = pv.pizzeria_id
WHERE p.name IN ('Kate')
  AND price BETWEEN 800 AND 1000
ORDER BY 1, 2, 3;