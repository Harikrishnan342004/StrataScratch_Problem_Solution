-- New Products
-- Medium

-- Calculate the net change in the number of products launched by companies in 2020 compared to 2019.
-- Your output should include the company names and the net difference.
-- (Net difference = Number of products launched in 2020 - The number launched in 2019.)

select company_name,
      SUM(CASE WHEN year = 2020 THEN 1 ELSE 0 END )
      -
      SUM(CASE WHEN year = 2019 THEN 1 ELSE 0 END ) AS Net_diff
from car_launches
WHERE year IN (2020 , 2019)
GROUP BY company_name
ORDER BY company_name;

-- Method 2 (By using COUNT)

SELECT 
    company_name,
    COUNT(CASE WHEN year = 2020 THEN 1 END) -
    COUNT(CASE WHEN year = 2019 THEN 1 END) AS net_difference
FROM products
WHERE year IN (2019, 2020)
GROUP BY company_name
ORDER BY company_name;

-- Table

-- car_launches

-- Preview
-- company_name:      text
-- product_name:      text
-- year:              bigint