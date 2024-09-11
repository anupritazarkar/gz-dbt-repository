SELECT
EXTRACT(MONTH FROM date_date) as datemonth,
SUM(ads_margin) as ads_margin,
SUM(ads_impression) as ads_impression,
sum(ads_click) as ads_click,
sum(ads_cost) as ads_cost,
sum(revenue) as revenue,
sum(margin) as margin,

FROM {{ ref("finance_campaigns_day") }} 
group by datemonth
order by datemonth DESC
