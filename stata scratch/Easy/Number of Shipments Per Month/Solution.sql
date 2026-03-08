-- Number of Shipments Per Month



-- Write a query that will calculate the number of shipments per month.
-- The unique key for one shipment is a combination of shipment_id and sub_id.
-- Output the year_month in format YYYY-MM and the number of shipments in that month.

SELECT 
    FORMAT(shipment_date,'yyyy-MM') AS year_month,
    COUNT(DISTINCT CONCAT(shipment_id,'-',sub_id)) AS shipment_count
FROM amazon_shipment
GROUP BY FORMAT(shipment_date,'yyyy-MM')
ORDER BY year_month;


-- amazon_shipment

-- Preview

-- shipment_date:    date
-- shipment_id:      bigint
-- sub_id:           bigint
-- weight:           bigint