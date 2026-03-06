-- Workers by Department Since April

select department,
       count(DISTINCT worker_id) AS Worker_count
from worker
WHERE  joining_date >= '2014-04-01'
GROUP BY department
ORDER BY Worker_count DESC;


-- Find the number of workers by department who joined on or after April 1, 2014.
-- Output the department name along with the corresponding number of workers.
-- Sort the results based on the number of workers in descending order.

-- Table
-- worker


-- worker

-- Preview

-- department:            text
-- first_name:            text
-- joining_date:          date
-- last_name:             text
-- salary:                bigint
-- worker_id:             bigint