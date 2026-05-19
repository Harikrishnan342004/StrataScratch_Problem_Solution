-- Hour Of Highest Gas Expense

select lyft_rides.hour from lyft_rides
ORDER BY gasoline_cost DESC
LIMIT 1 ;

-- Hour Of Highest Gas Expense
-- Find the hour with the highest gasoline cost. Assume there's only 1 hour with the highest gas cost.

-- lyft_rides

-- Preview
-- gasoline_cost: double
-- hour: bigint
-- index: bigint
-- travel_distance: double
-- weather: text