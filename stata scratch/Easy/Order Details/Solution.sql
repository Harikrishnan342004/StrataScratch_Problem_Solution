-- Order Details

-- Find order details made by Jill and Eva.
-- Consider the Jill and Eva as first names of customers.
-- Output the order date, details and cost along with the first name.
-- Order records based on the customer id in ascending order.

-- Tables

-- customers
-- orders


select C.first_name,
      O.order_date ,
       O.order_details,
       O.total_order_cost
from customers C
JOIN orders O ON 
C.id = O.cust_id
WHERE C.first_name  IN ('Jill' , 'Eva' )
ORDER BY cust_id ASC;

select C.first_name,
       O.order_date,
       O.order_details,
       O.total_order_cost
from customers AS C
JOIN orders AS O
ON C.id = O.cust_id
WHERE C.first_name = "Jill" OR C.first_name = "Eva"
ORDER BY   O.cust_id ASC ; 

------------------------------------------------

select C.first_name,
       O.order_date,
       O.order_details,
       O.total_order_cost
from customers AS C
JOIN orders AS O
ON C.id = O.cust_id
WHERE C.first_name IN  ("Jill" , "Eva")
ORDER BY   O.cust_id ASC ; 




-- customers

-- Preview

-- address:     text
-- city:        text
-- first_name:  text
-- id:          bigint
-- last_name:   text
-- phone_number:text



-- orders

-- Preview

-- cust_id:           bigint
-- id:                bigint
-- order_date:        date
-- order_details:     text
-- total_order_cost:  bigint