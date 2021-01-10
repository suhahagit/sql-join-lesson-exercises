USE sql_join;

SELECT name, COUNT(*) FROM patient p, ethnicity e
WHERE p.ethnicity = e.id 
AND p.disease = 'lettuce disease'
GROUP BY p.ethnicity
ORDER BY p.ethnicity;