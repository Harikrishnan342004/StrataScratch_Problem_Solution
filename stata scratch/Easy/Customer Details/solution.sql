-- Customer Details

-- Find the details of each customer regardless of whether the customer made an order.
-- Output the customer's first name, last name, and the city along with the order details.
-- Sort records based on the customer's first name and the order details in ascending order.

select C.first_name,
       C.last_name,
       C.city,
       O.order_details
from customers AS C
LEFT JOIN orders AS O
ON C.id = O.cust_id
ORDER BY C.first_name ASC,
         O.order_details ASC ;

-- Tables
-- customers
-- orders


-- Preview
-- address:     text
-- city:        text
-- first_name:  text
-- id:          bigint
-- last_name:   text
-- phone_number:text


-- orders
-- Preview

-- cust_id:       bigint
-- id:            bigint
-- order_date:    date
-- order_details: text
-- total_order_cost:  bigint


