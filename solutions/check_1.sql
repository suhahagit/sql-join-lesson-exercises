USE sql_join;

SELECT item_purchased, amount, name, industry
FROM transaction JOIN company
WHERE transaction.company_id = company.id