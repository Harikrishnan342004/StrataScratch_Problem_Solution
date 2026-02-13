USE maven_advanced_sql;
SELECT * FROM products;
SELECT * FROM products;
--  ASSIGNMENT 1: Numeric function

-- Calculate the toal spend for each customer 
SELECT o.customer_id,
        SUM(o.units * p.unit_price) AS total_spent
FROM orders o
LEFT JOIN products AS p
ON o.product_id =  p.product_id
GROUP BY o.customer_id;

-- PUT the spent into bins of $0-$10 , $10-20 , etc.

WITH bin AS (SELECT o.customer_id,
                    FLOOR(SUM(o.units * p.unit_price)/10)*10 AS total_spent
                    FROM orders o
					LEFT JOIN products AS p
                    ON o.product_id =  p.product_id
              GROUP BY o.customer_id)

SELECT total_spent,
       COUNT(customer_id) AS num_customers FROM bin
GROUP BY total_spent
ORDER BY total_spent;






