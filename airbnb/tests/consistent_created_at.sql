SELECT
    f.review_date,  l.created_at
FROM
    {{ ref('fct_reviews') }} f
LEFT JOIN {{ ref('dim_listings_cleansed') }} l on f.listing_id = l.listing_id
WHERE f.review_date < l.created_at
LIMIT 10



