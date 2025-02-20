-- Macro to truncate dates/timestamps to month level (This one is for Snowflake, BigQuery has different syntax)

{% macro date_trunc_month(date_column, date_part='MONTH') %}

    date_trunc('{{ date_part }}', {{ date_column }})

{% endmacro %}