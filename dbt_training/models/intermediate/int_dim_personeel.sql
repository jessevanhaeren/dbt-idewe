{{config(
    materialized = "view")}}

with dim_personeel AS (
SELECT *
  FROM {{ref("stg_dim_personeel")}}
)

SELECT [personeel_wid]
      ,[personeelscode]
      ,[personeel_regio]
      ,[personeelstype]
      ,ISNULL([huidige_werktalen], 'Niet gespecificeerd') as huidige_werktalen
      ,[personeel_naam]
      ,[personeel_beroepsomschrijving]
      
  FROM dim_personeel
