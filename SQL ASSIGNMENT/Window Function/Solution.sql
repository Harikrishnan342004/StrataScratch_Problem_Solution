-- Connect to database (MySQL)
use maven_advanced_sql ;

-- ASSIGNMENT 1: Winsow function basic

-- view the orders table
SELECT * FROM orders;

-- view the columns of interst
SELECT customer_id , 
       order_id,  
       order_date,
       transaction_id 
FROM orders
ORDER BY customer_id, transaction_id;

-- For each customer , add a column for transaction number
SELECT customer_id , order_id, order_date, transaction_id ,
	   ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY transaction_id )  FROM orders
ORDER BY customer_id , transaction_id;


