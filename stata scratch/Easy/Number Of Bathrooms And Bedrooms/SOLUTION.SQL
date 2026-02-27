-- Number Of Bathrooms And Bedrooms


-- Find the average number of bathrooms and bedrooms for each city’s property types.
-- Output the result along with the city name and the property type.

select city,
       property_type,
       AVG(bathrooms),
       AVG(bedrooms)
from airbnb_search_details
GROUP BY city, property_type ;

-- Table

-- airbnb_search_details

-- Preview
-- accommodates:   bigint
-- amenities:      text
-- bathrooms:      bigint
-- bed_type:       text
-- bedrooms:       bigint
-- beds:           bigint
-- cancellation_policy:   text
-- city:                  text
-- cleaning_fee:          tinyint
-- host_identity_verified:text
-- host_response_rate:    text
-- host_since:            date
-- id:                    bigint
-- neighbourhood:         text
-- number_of_reviews:     bigint
-- price:                 double
-- property_type:         text
-- review_scores_rating:  double
-- room_type:             text
-- zipcode:               bigint