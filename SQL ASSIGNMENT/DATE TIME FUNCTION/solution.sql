USE maven_advanced_sql;

SELECT * FROM ORDERS;
-- Extract just the orders from Q2 2024
SELECT order_id , order_date 
FROM ORDERS
WHERE year(order_date) = 2024 AND month(order_date) between 4 and 6;

-- Add a column called ship_date that adds 2 days to each order date 
SELECT order_id,
	   order_date,
       date_add(order_date, interval 2 day ) as ship_date
FROM ORDERS
WHERE year(order_date) = 2024 AND month(order_date) between 4 and 6;