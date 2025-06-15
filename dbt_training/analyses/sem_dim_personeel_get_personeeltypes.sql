-- Returns a list of the personeelstypes in the sem_dim_personeel
{% set personeelstypes = dbt_utils.get_column_values(table=ref('sem_dim_personeel'), column='personeelstype') %}

{% for personeelstype in personeelstypes %}
    {{personeelstype}}
{% endfor %}
