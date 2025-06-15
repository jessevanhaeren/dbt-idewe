WITH
    fct_prestaties
    AS
    (
        SELECT *
        FROM {{ ref('int_fct_prestaties') }}
)

SELECT
    [wgprestatie_id],
    [werkgever_wid],
    [personeel_wid],
    [datum_wid]
from fct_prestaties
