USE sql_join;

SELECT item_purchased, amount, name, industry
FROM transaction AS tr JOIN company AS cu
WHERE tr.company_id = cu.id