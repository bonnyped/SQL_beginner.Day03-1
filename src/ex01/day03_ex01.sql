SELECT mn.id AS menu_id
FROM menu mn
EXCEPT
SELECT po.menu_id
FROM person_order po
ORDER BY 1;