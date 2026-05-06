SELECT
  COUNT(DISTINCT movie) AS number_of_movies
FROM oscar_nominees
WHERE
  nominee = 'Abigail Breslin';


-- Count the number of movies for which Abigail Breslin was nominated for an Oscars

-- oscar_nominees

-- Preview

-- category:  text
-- id:        bigint
-- movie:     text
-- nominee:   text
-- winner:    boolean
-- year:      bigint