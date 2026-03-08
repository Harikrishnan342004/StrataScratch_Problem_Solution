-- Finding Updated Records




-- We have a table with employees and their salaries, however, some of the records are old and contain outdated salary information. 
-- Find the current salary of each employee assuming that salaries increase each year. Output their id, first name, last name, department ID, and current salary. 
-- Order your list by employee ID in ascending order.

-- Table
-- ms_employee_salary

WITH RANK_TABLE AS(  SELECT *,
                           ROW_NUMBER() OVER(PARTITION BY id ORDER BY salary desc ) AS rnk 
                     FROM ms_employee_salary)

SELECT id,
       first_name,
       last_name,
       department_id,
       salary
FROM RANK_TABLE
WHERE rnk = 1;

SELECT id, 
       first_name ,
       last_name ,
       department_id , 
       MAX(salary) AS current_salary
FROM ms_employee_salary
GROUP BY id, 
         first_name ,
         last_name ,
         department_id 
ORDER BY id ASC;



-- # Finding Updated Records

-- # We have a table with employees and their salaries, however, some of the records are old and contain outdated salary information. Find the current salary of each employee assuming that salaries increase each year. Output their id, first name, last name, department ID, and current salary. Order your list by employee ID in ascending order.

-- # Table
-- # ms_employee_salary


-- # ms_employee_salary

-- # Preview

-- # department_id:   bigint
-- # first_name:      text
-- # id:              bigint
-- # last_name:       text
-- # salary:          bigint