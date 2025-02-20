WITH nj2 AS
(
SELECT
    movie_id
    ,{{ date_trunc_month('date') }} AS month
    ,SUM(ticket_amount) AS tickets_sold
    ,SUM(total_earned) AS transaction_total
    ,'NJ_002' AS location
FROM
    {{ source('silverscreen', 'nj_002') }}
GROUP BY
    movie_id, month
)

SELECT
    *
FROM
    nj2