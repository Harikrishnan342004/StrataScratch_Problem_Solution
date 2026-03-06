-- Number of violations

select YEAR(inspection_date),
       count(DISTINCT violation_id) AS NUM_COUNT
from sf_restaurant_health_violations
WHERE business_name = 'Roxanne Cafe'
GROUP BY YEAR(inspection_date)
ORDER BY NUM_COUNT ASC;

-- You are given a dataset of health inspections that includes details about violations. 
-- Each row represents an inspection, and if an inspection resulted in a violation,
--  the violation_id column will contain a value.


-- Count the total number of violations that occurred at 'Roxanne Cafe' for each year,
--  based on the inspection date.
-- Output the year and the corresponding number of violations in ascending order of the year.

-- Table

-- sf_restaurant_health_violations

-- sf_restaurant_health_violations

-- Preview

-- business_address:            text
-- business_city:               text
-- business_id:                 bigint
-- business_latitude:           double
-- business_location:           text
-- business_longitude:          double
-- business_name:               text
-- business_phone_number:       double
-- business_postal_code:        double
-- business_state:              text
-- inspection_date:             date
-- inspection_id:               text
-- inspection_score:            double
-- inspection_type:             text
-- risk_category:               text
-- violation_description:       text
-- violation_id:                text