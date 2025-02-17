WITH nj1 AS
(
SELECT
    movie_id
    ,DATE_TRUNC('MONTH', timestamp) AS month
    ,SUM(ticket_amount) AS tickets_sold
    ,SUM(transaction_total) AS transaction_total
    ,'NJ_001' AS location
FROM
    {{ source('silverscreen', 'nj_001') }}
GROUP BY
    movie_id, month
)

SELECT
    *
FROM
    nj1