select DISTINCT variety
from winemag_p2
where taster_name = 'Roger Voss' AND region_1 IS NOT NULL;

-- Wine varieties tasted by 'Roger Voss'

-- Find wine varieties tasted by 'Roger Voss' and with a value in the 'region_1' column of the dataset. Output unique variety names only.

-- winemag_p2
-- Preview

-- country:         text
-- description:     text
-- designation:     text
-- id:              bigint
-- points:          bigint
-- price:           double
-- province:        text
-- region_1:        text
-- region_2:        text
-- taster_name:    text
-- taster_twitter_handle: text
-- title:           text
-- variety:         text
-- winery:           text