with dim_personeel AS (
SELECT *
  FROM {{ source('prestaties', 'personeel')}}
)

SELECT [personeel_wid]
      ,[personeelscode]
      ,[regio] as personeel_regio
      ,[personeelstype]
      ,[huidige_werktalen]
      ,[naam] as personeel_naam
      ,[beroepsomschrijving] as personeel_beroepsomschrijving
      
  FROM dim_personeel

