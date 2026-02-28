-- April Admin Employees

-- Find the number of employees working in the Admin department that joined in April or later, in any year.
SELECT COUNT(worker_id)
FROM worker
WHERE department = 'Admin'
AND MONTH(joining_date) >= 4;
-- Table
-- worker

-- Preview

-- department:     text
-- first_name:     text
-- joining_date:   date
-- last_name:      text
-- salary:         bigint
-- worker_id:      bigint