INSERT INTO person_visits (id, person_id, pizzeria_id, visit_date)
VALUES ((SELECT max(id + 1)
         FROM person_visits), (SELECT p.id
                      FROM person p
                      WHERE name IN ('Denis')), (SELECT zz.id
                          FROM pizzeria zz
                          WHERE zz.name IN ('Dominos')), '2022-02-24'),
       ((SELECT max(id + 2)
         FROM person_visits), (SELECT p.id
                      FROM person p
                      WHERE name IN ('Irina')), (SELECT zz.id
                          FROM pizzeria zz
                          WHERE zz.name IN ('Dominos')), '2022-02-24');