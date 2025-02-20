{{ config(materialized='table') }}

WITH temp_table AS
(
SELECT
    mme.movie_id
    ,mcc.movie_title
    ,mcc.genre
    ,mcc.studio
    ,mme.month
    ,mme.location
    ,mme.rental_cost
    ,mme.tickets_sold
    ,mme.revenue
FROM
    {{ ref('movie_metrics_expanded') }} AS mme
LEFT JOIN
    {{ ref('movie_catalogue_clean') }} AS mcc
ON
    mme.movie_id = mcc.movie_id
)

SELECT
    *
FROM
    temp_table