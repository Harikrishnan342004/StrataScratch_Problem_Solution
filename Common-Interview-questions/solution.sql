-- Find Second highest Salary

-- LIMIT 
SELECT DISTINCT salary FROM employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1

-- Subquery
SELECT MAX(Salary)  FROM employee
WHERE Salary < (SELECT MAX(Salary) FROM employee);

-- Windows Function
SELECT * FROM
(
    SELECT * , DENSE_RANK() OVER( ORDER BY Salary DESC ) AS rnk 
    FROM employee
)t
WHERE rnk = 2;

-------------------------------------------------------------------------------------------

-- Find third highest Salary

-- LIMIT 
SELECT DISTINCT salary FROM employee
ORDER BY salary DESC
LIMIT 1 OFFSET 2

-- Subquery..
SELECT MAX(Salary)  FROM employee
WHERE  Salary < (SELECT MAX(Salary) FROM employee) 
WHERE Salary < (SELECT MAX(Salary) FROM employee);

-- Windows Function
SELECT * FROM
(
    SELECT * , DENSE_RANK() OVER( ORDER BY Salary DESC ) AS rnk 
    FROM employee
)t
WHERE rnk = 3;

----------------------------------------------------------------------------------------------------
-- Common Interview Starter

-- retrive all duplicate email

SELECT * FROM 
(
    SELECT * , ROW_NUMBER() OVER(PARTITION BY email ORDER by id ) AS rnk FROM users
)t
WHERE rnk > 1;

----------------------------------------------------------------------------------------------------

-- Get the TOP 3 highest paid employees in each department

SELECT * FROM Employee
ORDER BY salary DESC
LIMIT 3 ;

----------------------------------------------------------------------------------------------------

