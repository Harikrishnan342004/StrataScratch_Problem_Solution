-- Calculate Samantha's and Lisa's total sales revenue


SELECT SUM(sales_revenue) AS total_revenue
FROM sales_performance
WHERE salesperson IN ('Samantha', 'Lisa');


SELECT SUM(sales_revenue) as total_revenue
FROM sales_performance
WHERE salesperson = "Samantha" OR salesperson = "Lisa";



-- Easy
-- ID 10127

-- What is the total sales revenue of Samantha and Lisa?

-- Table
-- sales_performance

sales_performance
Preview

-- id:              bigint
-- sales_revenue:   bigint
-- salesperson:     text
-- widget_sales:  bigint