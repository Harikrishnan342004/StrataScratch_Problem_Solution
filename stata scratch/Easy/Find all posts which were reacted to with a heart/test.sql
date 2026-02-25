SELECT DISTINCT fp.* FROM facebook_posts fp
JOIN facebook_reactions R
ON fp.post_id = R.post_id
WHERE R.reaction = 'heart';


-- Find all posts which were reacted to with a heart

-- Find all posts which were reacted to with a heart. For such posts output all columns from facebook_posts table.


-- facebook_reactions

-- date_day:     bigint
-- friend:       bigint
-- post_id:      bigint
-- poster:       bigint
-- reaction:     text

-- facebook_posts

-- post_date:    date
-- post_id:      bigint
-- post_keywords:text
-- post_text:    text
-- poster:       bigint