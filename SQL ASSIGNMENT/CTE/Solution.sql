USE maven_advanced_sql;

-- Return all order over $200 
SELECT * FROM orders;
SELECT * FROM products;

WITH NE AS(SELECT o.order_id ,
	   SUM(o.units * p.unit_price) AS TOTAL
       FROM orders AS o 
join products AS p
ON o.product_id = p.product_id
GROUP BY o.order_id
HAVING TOTAL > 200
ORDER BY TOTAL DESC)
select COUNT(*) AS COUNTOFTOTALS FROM NE;
