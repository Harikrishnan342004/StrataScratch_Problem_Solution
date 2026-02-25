-- Popularity of Hack

-- Meta/Facebook has developed a new programing language called Hack.To measure the popularity of Hack they ran a survey with their employees. The survey included data on previous programing familiarity as well as the number of years of experience, age, gender and most importantly satisfaction with Hack. Due to an error location data was not collected, but your supervisor demands a report showing average popularity of Hack by office location. Luckily the user IDs of employees completing the surveys were stored.
-- Based on the above, find the average popularity of the Hack per office location.
-- Output the location along with the average popularity.

-- Tables
-- facebook_employees
-- facebook_hack_survey

-- facebook_employees
-- Preview

-- age:        bigint
-- gender:     text
-- id:         bigint
-- is_senior:  tinyint
-- location:   text

-- facebook_hack_survey
-- Preview

-- age:          bigint
-- employee_id:  bigint
-- gender:       text
-- popularity:   bigint


select FE.location,
       avg(FHS.popularity) AS POPU
from facebook_employees AS FE
JOIN facebook_hack_survey AS FHS
ON FE.id = FHS.employee_id
GROUP BY FE.location;