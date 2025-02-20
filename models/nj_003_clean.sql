WITH nj3 AS
(
SELECT
    details AS movie_id
    ,{{ date_trunc_month('timestamp') }} AS month
    ,SUM(amount) AS tickets_sold
    ,SUM(total_value) AS transaction_total
    ,'NJ_003' AS location
FROM
    {{ source('silverscreen', 'nj_003') }}
WHERE
    product_type = 'ticket'
GROUP BY
    movie_id, month
)

SELECT
    *
FROM
    nj3