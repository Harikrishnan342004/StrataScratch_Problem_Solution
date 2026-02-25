-- Bikes Last Used


-- Find the last time each bike was in use.
-- Output both the bike number and the date-timestamp of the bike's last use 
-- (i.e., the date-time the bike was returned).
--  Order the results by bikes that were most recently used.


-- Table
-- dc_bikeshare_q1_2012


-- Preview

-- bike_number:        text
-- duration:           text
-- duration_seconds:   bigint
-- end_station:        text
-- end_terminal:       bigint
-- end_time:           timestamp
-- id:                 bigint
-- rider_type:         text
-- start_station:      text
-- start_terminal:     bigint
-- start_time:         timestamp

select bike_number,
       MAX(end_time)
from dc_bikeshare_q1_2012
GROUP BY bike_number
ORDER BY end_time DESC ;