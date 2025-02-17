SELECT *
FROM {{ ref('nj_001_clean') }}

UNION

SELECT *
FROM {{ ref('nj_002_clean') }}

UNION

SELECT *
FROM {{ ref('nj_003_clean') }}