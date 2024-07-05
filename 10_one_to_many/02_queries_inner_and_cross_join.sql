-- All Results (CROSS JOIN)
SELECT *
FROM customers c, orders o;

-- SELECT all records from A and B where the condition is met.
SELECT * 
FROM customers c 
JOIN orders o ON o.customer_id = c.id; 

SELECT * 
FROM orders o 
JOIN customers c ON o.customer_id = c.id;

SELECT 
	CONCAT(c.first_name, c.last_name) as customer_name, 
	COUNT(o.id) as order_count,
	SUM(o.amount) AS total
FROM orders o 
JOIN customers c ON c.id = o.customer_id
GROUP BY c.id
ORDER BY total;

