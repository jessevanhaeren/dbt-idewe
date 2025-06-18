{% snapshot scd_personeel %}
{{
    config(
        unique_key='personeel_wid',
        strategy='check',
        check_cols='all',
            )
}}

SELECT *   FROM {{ref("stg_dim_personeel")}}

{% endsnapshot %}