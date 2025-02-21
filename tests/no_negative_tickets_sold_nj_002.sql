-- This test checks if we have ticket_amount less than 0 (No negative values) in source dataset nj_002

SELECT
    *
FROM
    {{ source('silverscreen', 'nj_002') }}
WHERE ticket_amount < 0