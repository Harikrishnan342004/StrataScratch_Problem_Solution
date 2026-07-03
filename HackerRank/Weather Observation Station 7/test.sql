-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION.
-- Your result cannot contain duplicates.


-- (LEFT Method)
SELECT DISTINCT CITY FROM STATION
WHERE LEFT(CITY , 1) IN ('a' , 'e' , 'i' , 'o' , 'u') ;

-- SUBSTRING
SELECT DISTINCT CITY 
FROM STATION
WHERE SUBSTRING(CITY , 1 , 1) IN ('a' , 'e' , 'i' , 'o' , 'u');

SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE "A%"
     OR  CITY LIKE "E%"
     OR  CITY LIKE "I%"
     OR  CITY LIKE "O%"
     OR  CITY LIKE "U%";