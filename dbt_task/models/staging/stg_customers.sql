select
    customer_id,
    first_name,
    last_name,
    email,
    region_id,
    created_at
from {{ source('raw', 'customers') }}
