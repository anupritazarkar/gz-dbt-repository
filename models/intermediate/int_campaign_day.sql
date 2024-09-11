SELECT
date_date,
SUM(impression) as ads_impression,
SUM(click) AS ads_click,
SUM(ads_cost) as ads_cost
from {{ ref("int_campaigns") }}
group by date_date
order by date_date ASC
