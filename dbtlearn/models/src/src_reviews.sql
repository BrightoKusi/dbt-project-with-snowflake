WITH raw_reviews as (
    SELECT 
        * 
    FROM 
        {{ source('airbnb', 'reviews') }}
)
SELECT  
    listing_id
    , date AS review_date
    , reviewer_name
    , comments AS review_text
    , sentiment AS sentiment_text
FROM 
    raw_reviews
