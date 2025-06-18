{% snapshot scd_werkgever %}
{{
    config(
        unique_key='werkgever_wid',
        strategy='check',
        check_cols='all',
            )
}}

SELECT *   FROM {{ref("stg_dim_werkgever")}}

{% endsnapshot %}