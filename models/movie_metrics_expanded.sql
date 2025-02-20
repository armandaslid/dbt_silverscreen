WITH tt_i AS
(
SELECT
    movie_id
    ,month
    ,SUM(total_invoice_sum) AS rental_cost
    ,location_id AS location
FROM
    {{ ref('invoices_clean') }}
GROUP BY
    movie_id, month, location
),

tt AS
(
SELECT
    mm.movie_id
    ,mm.month
    ,SUM(mm.tickets_sold) AS tickets_sold
    ,SUM(i.rental_cost) AS rental_cost
    ,mm.location
    ,SUM(mm.transaction_total) AS revenue
FROM
    {{ ref('movie_metrics') }} AS mm
JOIN
    tt_i AS i
ON
    mm.movie_id = i.movie_id
AND
    mm.month = i.month
AND
    mm.location = i.location
GROUP BY
    mm.movie_id, mm.month, mm.location
)

SELECT
    *
FROM
    tt