-- Connect to database
USE maven_advanced_sql;
-- ASSIGNMENT 1: Basic Joins
-- Looking at the orders and products tables, which products exist in one table, but not the other?

-- View the orders and products tables
SELECT * FROM ORDERS;
SELECT * FROM products;

SELECT COUNT( DISTINCT product_id ) FROM ORDERS;  -- 15
SELECT COUNT( DISTINCT product_id ) FROM products; -- 18

-- Join the tables using various join types & note the number of rows in the output
SELECT count(*) FROM orders o        -- 8549
LEFT JOIN products p 
ON o.product_id = p.product_id;

SELECT count(*) FROM orders o        -- 8552
right JOIN products p 
ON o.product_id = p.product_id;
        
-- View the products that exist in one table, but not the other
SELECT * FROM orders o        -- 8549
LEFT JOIN products p 
ON o.product_id = p.product_id
WHERE p.product_id IS NULL;

SELECT * FROM orders o        -- 8552
right JOIN products p 
ON o.product_id = p.product_id
WHERE O.product_id IS NULL;
        

-- Pick a final JOIN type to join products and orders
SELECT p.product_id , p.product_name , o.product_id as product_id_from_orders
  FROM products p         
LEFT JOIN orders o
ON o.product_id = p.product_id
WHERE o.product_id IS NULL ;
        

-- ASSIGNMENT 2: Self Joins
-- Which products are within 25 cents of each other in terms of unit price?

-- View the products table


-- Join the products table with itself so each candy is paired with a different candy

        
-- Calculate the price difference, do a self join, and then return only price differences under 25 cents


