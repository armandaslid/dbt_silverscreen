-- Macro to truncate dates/timestamps to month level

{% macro date_trunc_month(date_column, date_part='MONTH') %}

    date_trunc('{{ date_part }}', {{ date_column }})

{% endmacro %}