USE maven_advance_sql;

-- 1. Window function basic



SELECT country , year , happiness_score FROM happiness_scores;

-- Return all row numbers 
SELECT country,
       year, 
       happiness_score,
       ROW_NUMBER() OVER() AS rnk
       FROM happiness_scores;
       
-- Return all row numbers within each window
       
SELECT country,
       year, 
       happiness_score,
       ROW_NUMBER() OVER(partition by country ORDER BY happiness_score) AS rnk
       FROM happiness_scores;


