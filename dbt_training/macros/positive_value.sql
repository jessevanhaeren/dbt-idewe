{% test positive_value(model, column_name) %}
select *
from {{model}}
where 
    {{ column_name }} <> 'Unspecified'
    AND {{ column_name }} < 0
{% endtest %}
