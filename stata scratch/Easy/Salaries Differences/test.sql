SELECT ABS
(
  (
  SELECT MAX(DE.salary) FROM db_employee DE
  INNER JOIN db_dept AS DD
  ON DE.department_id = DD.id
  WHERE department = 'marketing'
  ) -
  
  (
  SELECT MAX(DE.salary) FROM db_employee DE
  INNER JOIN db_dept AS DD
  ON DE.department_id = DD.id
  WHERE department = 'engineering'
  )
  
) 
AS salary_difference





SELECT 
   ABS
   (
   MAX( CASE WHEN DD.department = 'marketing' THEN DE.salary END) 
   -
   MAX( CASE WHEN DD.department = 'engineering' THEN DE.salary END)
   )  AS SALARY_DIFFERNCE 
   FROM db_employee AS DE  
   JOIN db_dept AS DD 
   ON DE.department_id = DD.ID;

-- Salaries Difference

-- Calculates the difference between the highest salaries in the marketing and engineering departments. Output just the absolute difference in salaries.

-- Tables

-- db_employee
-- db_dept

-- db_employee

-- Preview

-- department_id:   bigint
-- first_name:      text
-- id:              bigint
-- last_name:       text
-- salary:          bigint


-- db_dept
-- Preview

-- department:      text
-- id:              bigint