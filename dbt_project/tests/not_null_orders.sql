with not_null_orders as (
    select *
    from {{ ref('stg_orders') }}
    where order_id is null
)
select count(*)
from not_null_orders
having count(*) > 0