-- ASSIGNMENT 3: String function

SELECT * FROM PRODUCTS;

-- view the current factory names and product IDs. 
SELECT 
       factory,
       product_id, 
       concat( replace( replace(factory, "'" , "" ) , " ", "-" ), "-" ,product_id ) AS NEW_PRODUCT_NAME
FROM PRODUCTS;