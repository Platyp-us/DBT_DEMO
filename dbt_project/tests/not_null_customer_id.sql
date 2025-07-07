with null_customers as (
    select *
    from {{ ref('stg_customers') }}
    where customer_id is null
)
select count(*) from null_customers
having count(*) > 0
