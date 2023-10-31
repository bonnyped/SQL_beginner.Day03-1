INSERT INTO person_visits (id, person_id, pizzeria_id, visit_date)
VALUES ((select max(id + 1)
         from person_visits), (select p.id
                      from person p
                      where name in ('Denis')), (select zz.id
                          from pizzeria zz
                          where zz.name IN ('Dominos')), '2022-02-24'),
       ((select max(id + 2)
         from person_visits), (select p.id
                      from person p
                      where name in ('Irina')), (select zz.id
                          from pizzeria zz
                          where zz.name IN ('Dominos')), '2022-02-24');