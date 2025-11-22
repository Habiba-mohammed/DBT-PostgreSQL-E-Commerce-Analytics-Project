select
    c.customer_id,
    c.first_name,
    c.last_name,
    r.region_name,
    count(o.order_id) as total_orders,
    sum(o.total_amount) as total_spent
from {{ ref('stg_customers') }} c
left join {{ ref('stg_regions') }} r
    on c.region_id = r.region_id
left join {{ ref('stg_orders') }} o
    on c.customer_id = o.customer_id
group by 1,2,3,4
