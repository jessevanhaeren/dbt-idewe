with fct_prestaties AS (
SELECT *
  FROM {{ source('prestaties', 'prestaties')}}
)

SELECT [wgprestatie_wid]
      ,[wgprestatie_id]
      ,[prestatie_kode]
      ,[duur] as prestatie_duur
      ,[datum] as prestatie_datum
      ,[werkgever_wid]
      ,[vaststelling_wid]
      ,[activiteit_wid]
      ,[prestatie_wid]
      ,[personeel_wid]
      ,[datum_wid]
      
  FROM fct_prestaties