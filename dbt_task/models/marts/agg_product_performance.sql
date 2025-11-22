select
    p.product_id,
    p.product_name,
    c.category_name,
    sum(oi.quantity) as total_quantity_sold,
    sum(oi.quantity * p.price) as total_sales
from {{ ref('stg_products') }} p
left join {{ ref('stg_categories') }} c
    on p.category_id = c.category_id
left join {{ ref('stg_order_items') }} oi
    on p.product_id = oi.product_id
group by 1,2,3
