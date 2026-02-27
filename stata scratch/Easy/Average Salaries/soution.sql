-- Average Salaries

-- Easy
-- ID 9917
 SELECT department,
        first_name,
        salary,
         avg(salary) OVER(PARTITION BY department) AS avg_department_salary
FROM employee;
 

-- Compare each employee's salary with the average salary of the corresponding department.
-- Output the department, first name, and salary of employees along with the average salary of that department.

-- Table

-- employee

-- Preview
-- address:      text
-- age:          bigint
-- bonus:        bigint
-- city:         text
-- department:   text
-- email:        text
-- employee_title:  text
-- first_name:      text
-- id:              bigint
-- last_name:       text
-- manager_id:      bigint
-- salary:          bigint
-- sex:             text
-- target:          bigint