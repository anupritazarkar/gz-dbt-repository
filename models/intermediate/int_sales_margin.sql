select
    products_id,
    date_date,
    orders_id,
    revenue,
    quantity,
    purchase_price,
    (quantity*purchase_price) as purchase_cost,
    (revenue - (quantity * purchase_price)) as margin,
    {% macro margin_percent(revenue, purchase_cost)%}
    safe_divide((revenue-purchase_cost),revenue) as margin_percent
{%endmacro%}
from {{("dbt_anu.stg_raw__sales")}}
left join {{("dbt_anu.stg_raw__product")}}
using (products_id)