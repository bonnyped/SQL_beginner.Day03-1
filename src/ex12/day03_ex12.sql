WITH number_of_order AS (SELECT generate_series(max(po.id) + 1, max(po.id) + max(p.id)) number,
                                generate_series(1, max(p.id))                           count_num
                         FROM person p,
                              person_order po),
     list_of_persons AS (SELECT generate_series(1, max(p.id)) number
                         FROM person p),
     total_table_new_orders AS (SELECT no.number    order_number,
                                       lp.number    person_id,
                                       (SELECT mn.id
                                        FROM menu mn
                                        WHERE mn.pizza_name = 'greek pizza') menu_id,
                                       '2022-02-25'::date order_date
                                FROM number_of_order no
                                         JOIN list_of_persons lp ON no.count_num = lp.number)
INSERT
INTO person_order(id, person_id, menu_id, order_date)
SELECT ttno.order_number,
       ttno.person_id,
       ttno.menu_id,
       ttno.order_date
FROM total_table_new_orders ttno;