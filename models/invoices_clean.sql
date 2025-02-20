-- Cleaning duplicate values

WITH invoice_temp AS
(
SELECT
    movie_id
    ,invoice_id
    ,month
    ,location_id
    ,studio
    ,release_date
    ,weekly_price
    ,total_invoice_sum
    ,ROW_NUMBER() OVER (PARTITION BY invoice_id ORDER BY release_date) AS row_num
FROM
    {{ source('silverscreen', 'invoices') }}
)

SELECT
    movie_id
    ,month
    ,total_invoice_sum
    ,location_id
FROM
    invoice_temp
WHERE
    row_num = 1