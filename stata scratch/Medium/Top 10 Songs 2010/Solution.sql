-- Top 10 Songs 2010

-- Find the top 10 ranked songs in 2010. 
-- Output the rank, group name, and song name,
-- but do not show the same song twice.
-- Sort the result based on the rank in ascending order.

-- Table
-- billboard_top_100_year_end


select DISTINCT song_name,
                group_name,
                year_rank
from billboard_top_100_year_end
WHERE year = 2010
LIMIT 10;

-- billboard_top_100_year_end

-- Preview

-- artist:            text
-- group_name:        text
-- id:                bigint
-- song_name:         text
-- year:              bigint
-- year_rank:         bigint




