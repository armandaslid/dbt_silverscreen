WITH tt AS
(
SELECT
    movie_id
    ,movie_title
    ,COALESCE(genre, 'Unknown') AS genre
    ,studio
FROM {{ source('silverscreen', 'movie_catalogue') }}
)

SELECT
    *
FROM tt