-- Find all athletes who were older than 40 years when they won either Bronze or Silver medals

select name 
from olympics_athletes_events
WHERE age > 40 AND 
medal IN ('Bronze', 'Silver') ;


-- Find all athletes who were older than 40 years when they won either Bronze or Silver medals.