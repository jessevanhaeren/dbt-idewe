{{config(
    materialized = "incremental",
    on_schema_change = "fail" )}}

with stg_fct_prestaties AS (
SELECT *
  FROM {{ref("stg_fct_prestaties")}}
)

SELECT *
FROM stg_fct_prestaties
WHERE [prestatie_duur] is not null

{% if is_incremental() %}

    AND [datum_wid] > (select max([datum_wid]) from {{this}})

{% endif %}