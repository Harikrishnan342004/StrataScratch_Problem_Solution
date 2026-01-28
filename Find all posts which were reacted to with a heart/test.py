import pandas as pd

heart_post = facebook_posts[
    facebook_posts['post_id'].isin
    (
        facebook_reactions.loc
        [
            facebook_reactions['reaction'] == "heart" , "post_id"
        ]
    )
    ]