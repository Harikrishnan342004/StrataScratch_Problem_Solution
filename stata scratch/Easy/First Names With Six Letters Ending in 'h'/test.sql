-- First Names With Six Letters Ending in 'h'


-- Find all workers whose first name contains 6 letters and also ends with the letter 'h'.


-- Display all information about the workers in output.


select * from worker
WHERE LENGTH(first_name) = 6 AND first_name LIKE '%h';