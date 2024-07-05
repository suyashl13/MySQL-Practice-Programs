-- Includes all entries from left table.
SELECT *
FROM customers c 
LEFT JOIN Orders o ON o.customer_id = c.id;

-- Includes all entries from left table. With group by.
SELECT 
    first_name, 
    last_name, 
    IFNULL(SUM(amount), 0) AS money_spent
FROM
    customers
LEFT JOIN
    orders ON customers.id = orders.customer_id
GROUP BY first_name , last_name;
