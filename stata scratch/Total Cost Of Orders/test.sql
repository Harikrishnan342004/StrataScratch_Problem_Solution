select C.id ,
       C.first_name ,
       SUM(O.total_order_cost) AS TOTAL
from customers AS C
JOIN orders AS O
ON C.ID = O.cust_id
GROUP BY C.id , 
         C.first_name
ORDER BY first_name;



-- Total Cost Of Orders
-- Find the total cost of each customer's orders. Output customer's id, first name, and the total order cost. Order records by customer's first name alphabetically.


-- customers

-- Preview

-- address:       text
-- city:          text
-- first_name:    text
-- id:            bigint
-- last_name:     text
-- phone_number:  text


-- orders
-- Preview

-- cust_id:            bigint
-- id:                 bigint
-- order_date:         date
-- order_details:      text
-- total_order_cost:   bigint