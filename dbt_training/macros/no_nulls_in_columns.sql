{% macro no_nulls_in_columns(model) %}
    SELECT * FROM {{model}} WHERE
    {% for col in adapter.get_columns_in_relation(model) -%}
        {{ col.column}} IS NULL OR
        {% endfor %}
        0 = 1
{% endmacro %}