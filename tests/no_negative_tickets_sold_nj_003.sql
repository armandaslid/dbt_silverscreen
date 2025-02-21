-- This test checks if we have (ticket) amount less than 0 (No negative values) in source dataset nj_003

SELECT
    *
FROM
    {{ source('silverscreen', 'nj_003') }}
WHERE amount < 0