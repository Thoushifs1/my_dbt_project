{% macro create_schema() %}
  {% set schema_name = target.schema %}
  
  -- Create schema if it does not exist
  {% set create_schema_sql %}
    CREATE SCHEMA IF NOT EXISTS {{ schema_name }};
  {% endset %}
  
  -- Execute the SQL
  {% do run_query(create_schema_sql) %}
{% endmacro %}
