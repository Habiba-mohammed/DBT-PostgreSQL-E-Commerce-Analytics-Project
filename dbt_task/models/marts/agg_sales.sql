select
    o.order_id,
    o.customer_id,
    r.region_name,
    o.order_date,
    o.status,
    o.total_amount,
    count(oi.order_item_id) as total_items,
    sum(p.price * oi.quantity) as calculated_amount
from {{ ref('stg_orders') }} o
left join {{ ref('stg_order_items') }} oi
    on o.order_id = oi.order_id
left join {{ ref('stg_products') }} p
    on oi.product_id = p.product_id
left join {{ ref('stg_customers') }} c
    on o.customer_id = c.customer_id
left join {{ ref('stg_regions') }} r
    on c.region_id = r.region_id
group by 1,2,3,4,5,6
