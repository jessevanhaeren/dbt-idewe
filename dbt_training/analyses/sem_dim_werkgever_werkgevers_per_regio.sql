SELECT 
    [werkgever_regio],
    COUNT(DISTINCT [werkgevernummer]) AS aantal_werkgevers
FROM 
    {{ref("sem_dim_werkgever")}}
GROUP BY 
    [werkgever_regio]
