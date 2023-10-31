INSERT INTO person_order (id, person_id, menu_id, order_date)
VALUES ((SELECT max(po.id) + 1
         FROM person_order po), (SELECT p.id
                                 FROM person p
                                 WHERE name IN ('Denis')), (SELECT m.id
                                                            FROM menu m
                                                            WHERE m.pizza_name IN ('sicilian pizza')), '2022-02-24'),
       ((SELECT max(po.id) + 2
         FROM person_order po), (SELECT p.id
                                 FROM person p
                                 WHERE name IN ('Irina')), (SELECT m.id
                                                            FROM menu m
                                                            WHERE m.pizza_name IN ('sicilian pizza')), '2022-02-24');
