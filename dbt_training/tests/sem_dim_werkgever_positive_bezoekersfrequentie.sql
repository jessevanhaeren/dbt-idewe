select *
from {{ref('sem_dim_werkgever')}}
where [bezoekersfrequentie] <> 'Unspecified' and [bezoekersfrequentie]<0