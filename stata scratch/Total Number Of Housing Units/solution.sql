-- Total Number Of Housing Units


-- Find the total number of housing units completed for each year. 
-- Output the year along with the total number of housings. 
-- Order the result by year in ascending order.
-- Note: Number of housing units in thousands.

-- Table
-- housing_units_completed_us


-- housing_units_completed_us
-- Preview

-- midwest:   double
-- month:     bigint
-- northeast: double
-- south:     double
-- west:      double
-- year:      bigint


SELECT year,
       ROUND(SUM(south + west + midwest + northeast )) AS num_of_unit
from housing_units_completed_us
GROUP BY year
ORDER BY year;