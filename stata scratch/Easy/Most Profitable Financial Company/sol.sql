-- Most Profitable Financial Company

SELECT company,
       continent
FROM forbes_global_2010_2014
WHERE sector = 'Financials'
ORDER BY profits DESC
LIMIT 1;


-- Find the most profitable company from the financial sector.
-- Output the result along with the continent.

-- Table
-- forbes_global_2010_2014

-- forbes_global_2010_2014

-- Preview

-- assets:          double
-- company:         text
-- continent:       text
-- country:         text
-- industry:        text
-- marketvalue:     double
-- profits:         double
-- rank:            bigint
-- sales:           double
-- sector:          text