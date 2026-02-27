-- Top Ranked Songs

-- Find songs that have ranked in the top position.
-- Output the track name and the number of times it ranked at the top.
-- Sort your records by the number of times the song was in the top position in descending order.


SELECT trackname,
      COUNT(CASE WHEN position = 1 then 1 END ) AS COUNT_OF_NUM
FROM spotify_worldwide_daily_song_ranking
WHERE position = 1
GROUP BY trackname
ORDER BY COUNT_OF_NUM DESC ;


SELECT trackname,
      COUNT(*) AS top_rank_count
FROM spotify_worldwide_daily_song_ranking
WHERE position = 1
GROUP BY trackname
ORDER BY top_rank_count DESC;

-- spotify_worldwide_daily_song_ranking
-- Preview

-- artist:          text
-- id:              bigint
-- position:        bigint
-- region:          text
-- stream_date:     date
-- streams:         bigint
-- trackname:       text
-- url:             text