USE maven_advanced_sql;

-- Subqueries in the FROM Clause

-- Rethurn the factorie, product names from the factory
-- and number of products produced by each factory

-- All factorie and their total number of products
SELECT fp.factory , fp.product_name , fn.num_products FROM 
(SELECT factory , product_name FROM products) fp
LEFT JOIN
(SELECT factory , count(product_name)  AS num_products
 FROM products
 group by factory) fn
 ON fp.factory = fn.factory;   