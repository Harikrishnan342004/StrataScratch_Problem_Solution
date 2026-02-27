-- Lyft Driver Wages


-- Find all Lyft drivers who earn either equal to or
-- less than 30k USD or equal to or more than 70k USD.
-- Output all details related to retrieved records.

select * from lyft_drivers
WHERE yearly_salary <= 30000 OR yearly_salary >= 70000 ;

-- Table
-- lyft_drivers

-- lyft_drivers

-- Preview
-- end_date:       date
-- index:          bigint
-- start_date:     date
-- yearly_salary:  bigint