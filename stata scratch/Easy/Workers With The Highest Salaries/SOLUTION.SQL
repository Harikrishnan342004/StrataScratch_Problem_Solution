-- Workers With The Highest Salaries


-- Management wants to analyze only employees with official job titles. 
-- Find the job titles of the employees with the highest salary. 
-- If multiple employees have the same highest salary, include all their job titles.


WITH max_salary_per_title AS (select worker_title,
                                     MAX(W.salary) AS ALL_MAX_SALARY 
                                     from worker AS W 
                                     JOIN title AS T
                                     ON W.worker_id = T.worker_ref_id
                                     GROUP BY worker_title
                              ),
                  RNK AS             (SELECT worker_title,
                                      ALL_MAX_SALARY,
                                      DENSE_RANK() OVER(ORDER BY  ALL_MAX_SALARY  DESC ) AS RN
                                      FROM max_salary_per_title
                                )
 SELECT    worker_title FROM RNK
 WHERE RN  = 1;

-- worker
-- Preview

-- department:   text
-- first_name:   text
-- joining_date: date
-- last_name:    text
-- salary:       bigint
-- worker_id:    bigint


-- title
-- Preview

-- affected_from:  date
-- worker_ref_id:  bigint
-- worker_title:   text