with duplicated_customers as (
    select customer_id
    from {{ ref('stg_customers') }}
    group by customer_id
    having count(*) > 1
)
select count(*) from duplicated_customers
having count(*) > 0
