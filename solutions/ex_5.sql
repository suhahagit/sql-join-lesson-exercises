USE sql_join;

SELECT symptoms_family, COUNT(*) FROM patient p
WHERE disease = 'cabbage disease'
GROUP BY symptoms_family
ORDER BY symptoms_family;