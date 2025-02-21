-- This test checks if we have ticket_amount less than 0 (No negative values) in source dataset nj_001

SELECT
    *
FROM
    {{ source('silverscreen', 'nj_001') }}
WHERE ticket_amount < 0