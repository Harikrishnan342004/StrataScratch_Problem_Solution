-- Calculate Average Score

-- Calculate the average score for each project, 
-- but only include projects where more than one 
-- team member has provided a score.


-- Your output should include the project ID and 
-- the calculated average score for each qualifying project.

-- project_data

-- Preview

-- date:           date
-- project_id:     bigint
-- score:          bigint
-- team_member_id: bigint


select  project_id , avg(score) from project_data
GROUP BY project_id 
HAVING count(DISTINCT team_member_id) > 1;



-- Windows Rank Function

SELECT project_id ,
       avg(score) 
FROM (
    SELECT project_id ,
           avg(score) OVER (PARTITION BY project_id ) AS avg_score,
           COUNT(DISTINCT team_member_id) OVER(PARTITION BY project_id ) AS member_count
           from project_data
)t
where member_count > 1;