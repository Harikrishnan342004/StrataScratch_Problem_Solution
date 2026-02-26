-- Finding User Purchases

-- Medium
-- ID 10322

-- Identify returning active users by finding users who made a
-- second purchase within 1 to 7 days after their first purchase. 
-- Ignore same-day purchases.
-- Output a list of these user_ids.

WITH first_purchase  AS  (SELECT user_id, 
                      MIN(created_at) AS first_purchase_date
                      FROM amazon_transactions
                      GROUP BY user_id
            )
SELECT DISTINCT T2.user_id 
FROM first_purchase as f
JOIN amazon_transactions AS T2
ON f.user_id = T2.user_id
and DATEDIFF( T2.created_at  , f.first_purchase_date) between 1 and 7  ;

-- Table
-- amazon_transactions


-- Preview

-- created_at:    date
-- id:            bigint
-- item:          text
-- revenue:       bigint
-- user_id:       bigint