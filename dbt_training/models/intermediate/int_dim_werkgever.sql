with dim_werkgever AS (
SELECT *
  FROM {{ref("stg_dim_werkgever")}}
)

SELECT [werkgever_wid]
      ,[werkgevernummer]
      ,[werkgever_regio]
      ,ISNULL([werkgever_statuut], 0) as werkgever_statuut
      ,[bezoekersfrequentie]
      ,[bedrijfsgroep]
      ,[kbo_nummer]
      ,[werkgever_taal]
      ,[NACE_code]
      ,[servicegroep]
      ,[klantsegment]
      ,[contracttype]
      ,[tariefgroep]
      ,[lifecycle_traject]
      ,[volgend_contact_info]
      ,[datum_volgend_contact]
      ,[bb_op_aanvraag]
      ,[klantonderdeel_naam]
      ,[klantonderdeel_id]
      ,[werkgevernaam]
      ,[klant_naam]
      ,[parent_klantonderdeel_id]
      ,[parent_klantonderdeel_naam]
      ,[klant_path]
      ,[comfort_select]
      
  FROM dim_werkgever
