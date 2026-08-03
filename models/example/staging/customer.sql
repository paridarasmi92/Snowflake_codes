{{config(materialized = 'table')}}
WITH tb2 as(
    select id, first_name, last_name 
    from {{source('Test_dbt','customer_raw_data')}})

select * from tb2
