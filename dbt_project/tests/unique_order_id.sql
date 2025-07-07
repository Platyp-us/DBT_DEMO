with duplicated_orders as (
    select order_id
    from {{ ref('stg_orders') }}
    group by order_id
    having count(*) > 1
)
select count(*) from duplicated_orders
having count(*) > 0