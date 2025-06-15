select *
from {{ref('sem_fct_prestaties')}}
where [datum_wid] > CONVERT(VARCHAR(8), GETDATE(), 112)