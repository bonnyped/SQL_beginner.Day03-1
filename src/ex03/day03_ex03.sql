(SELECT zz.name pizzeria_name
FROM person p
         JOIN person_visits pv ON p.id = pv.person_id
         JOIN pizzeria zz ON zz.id = pv.pizzeria_id
WHERE p.gender IN ('female')
    EXCEPT ALL
SELECT zz.name
FROM person p
         JOIN person_visits pv ON p.id = pv.person_id
         JOIN pizzeria zz ON zz.id = pv.pizzeria_id
WHERE p.gender IN ('male'))
UNION ALL
(SELECT zz.name
FROM person p
         JOIN person_visits pv ON p.id = pv.person_id
         JOIN pizzeria zz ON zz.id = pv.pizzeria_id
WHERE p.gender IN ('male')
    EXCEPT ALL
SELECT zz.name
FROM person p
         JOIN person_visits pv ON p.id = pv.person_id
         JOIN pizzeria zz ON zz.id = pv.pizzeria_id
WHERE p.gender IN ('female'))
ORDER BY pizzeria_name;
