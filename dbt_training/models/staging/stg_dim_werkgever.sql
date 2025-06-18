with dim_werkgever AS (
SELECT *
  FROM {{ source('prestaties', 'werkgever')}}
)

SELECT [werkgever_wid]
      , [werkgevernummer]
      , [regio] as werkgever_regio
      , [statuut] as werkgever_statuut
      , [bezoekersfrequentie]
      , [bedrijfsgroep]
      , [kbo_nummer]
      , [taal] as werkgever_taal
      , [NACE_code]
      , [servicegroep]
      , [klantsegment]
      , [contracttype]
      , [tariefgroep]
      , [lifecycle_traject]
      , [volgend_contact_info]
      , [datum_volgend_contact]
      , [bb_op_aanvraag]
      , [klantonderdeel_naam]
      , [klantonderdeel_id]
      , [werkgevernaam]
      , [klant_naam]
      , [parent_klantonderdeel_id]
      , [parent_klantonderdeel_naam]
      , [klant_path]
      , [comfort_select]

FROM dim_werkgever
