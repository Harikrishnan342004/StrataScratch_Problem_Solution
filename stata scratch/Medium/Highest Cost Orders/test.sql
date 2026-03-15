-- Highest Cost Orders


-- Find the customers with the highest daily total order cost between 2019-02-01 and 2019-05-01.
--  If a customer had more than one order on a certain day, sum the order costs on a daily basis. 
--  Output each customer's first name, total cost of their items, and the date. If multiple customers tie for the highest daily total on the same date, return all of them.
WITH Sample_Table AS (SELECT C.first_name,
                             SUM(O.total_order_cost) AS total,
                             O.order_date
                     FROM customers AS C
                     JOIN orders AS O
                     ON C.id = O.cust_id
                     GROUP BY C.first_name,O.order_date
                     ),

BETWEEN_TABLE AS (   SELECT * 
                     FROM Sample_Table
                     WHERE order_date BETWEEN  '2019-02-01' AND "2019-05-01"
                ),

MAX_TABLE  AS    (   SELECT DISTINCT first_name,
                                     max(total) AS MAX_TO,
                                     order_date
                     FROM BETWEEN_TABLE 
                     GROUP BY  order_date
                )

SELECT B.first_name,
       B.total,
       B.order_date
       FROM BETWEEN_TABLE AS B
       JOIN MAX_TABLE AS M
       ON B.total = M.MAX_TO AND B.order_date = M.order_date;

-- For simplicity, you can assume that every first name in the dataset is unique.

-- Tables
-- custom

-- customers
-- Preview

-- id:               bigint
-- first_name:       text
-- last_name:        text
-- city:             text
-- address:          text
-- phone_number:     text



-- orders            Preview

-- id:               bigint
-- cust_id:          bigint
-- order_date:       date
-- order_details:    text
-- total_order_cost: bigint