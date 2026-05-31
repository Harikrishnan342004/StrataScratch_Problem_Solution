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

-- Get the TOP 3 highest paid employees in each department ...

SELECT * FROM Employee
ORDER BY salary DESC
LIMIT 3 ;

SELECT *, DENSE_RANK()
OVER( ORDER BY salary DESC) AS rnk
FROM Employee
WHERE rnk <= 3;


----------------------------------------------------------------------------------------------------

-- Find the duplicate in the table

-- Employee Table
-- emp_id	emp_name	department	salary
-- 1	Hari	IT	50000
-- 2	Ravi	HR	45000
-- 3	Hari	IT	50000
-- 4	Priya	Finance	55000
-- 5	Ravi	HR	45000
-- 6	Karthik	IT	60000
-- 7	Priya	Finance	55000
-- 8	Arjun	Sales	40000

SELECT * , COUNT(*) FROM Employee
GROUP BY  emp_name , department 
HAVING count(*)> 1;

--------------------------------------------------------------------------------------------


Calculate the Total Revenue per Product (Paypal)

SELECT product_id, sum(quantity * price) as total_revenue
FROM sales
GROUP BY product_id;

------------------------------------------------------------------------------------