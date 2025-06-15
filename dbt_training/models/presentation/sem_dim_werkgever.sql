WITH provincies AS (
    SELECT *
    FROM {{ ref('seed_provincies') }}
),

dim_werkgever AS (
    SELECT *
    FROM {{ ref('int_dim_werkgever') }}
)

SELECT
    dim_werkgever.*,
    provincies.TX_PROV_DESCR_NL as werkgever_provincie,
    provincies.TX_RGN_DESCR_NL as werkgever_gewest

FROM dim_werkgever
    LEFT JOIN provincies
    ON dim_werkgever.werkgever_regio = provincies.TX_DESCR_NL

