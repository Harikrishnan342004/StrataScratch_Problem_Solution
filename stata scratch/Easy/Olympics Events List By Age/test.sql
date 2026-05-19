select min(age) AS lowest_age,
       avg(age) AS mean_age,
       max(age) AS highest_age
from olympics_athletes_events;



-- Olympics Events List By Age


-- Find the lowest, average, and the highest ages of athletes across all Olympics.
-- HINT: If athlete participated in more than one discipline at one Olympic games, 
-- consider it as a separate athlete, no need to remove such edge cases.