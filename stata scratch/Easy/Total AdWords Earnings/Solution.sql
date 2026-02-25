-- Total AdWords Earnings

-- Find the total AdWords earnings for each business type. Output the business types along with the total earnings.

-- Table
-- google_adwords_earnings

-- google_adwords_earnings

-- Preview

-- adwords_earnings:  bigint
-- business_name:     text
-- business_type:     text
-- n_employees:       bigint
-- year:              bigint

select business_type,
       sum(adwords_earnings) AS TOTAL
from google_adwords_earnings
GROUP BY business_type ;