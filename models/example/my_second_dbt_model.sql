-- Use the `ref` function to select from other models

{{ config(materialized='table') }}

with source_data as (
    select 100 as id
    union all
    select 200 as id
    union all
    select 300 as id
)

select * from source_data

