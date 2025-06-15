WITH provincies AS (
    SELECT *
    FROM {{ ref('seed_provincies') }}
),

dim_personeel AS (
    SELECT *
    FROM {{ ref('int_dim_personeel') }}
)

SELECT
    dim_personeel.*,
    provincies.TX_PROV_DESCR_NL as personeel_provincie,
    provincies.TX_RGN_DESCR_NL as personeel_gewest

FROM dim_personeel
    LEFT JOIN provincies
    ON dim_personeel.personeel_regio = provincies.TX_DESCR_NL

