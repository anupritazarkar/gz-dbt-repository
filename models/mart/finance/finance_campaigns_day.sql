SELECT
date_date,
operational_margin - ads_cost as ads_margin,
average_basket,
operational_margin,
ads_impression,
ads_click,
ads_cost,
revenue,
margin,
purchase_cost,
shipping_fee,
logcost
FROM {{ ref("int_campaign_day") }} 
LEFT JOIN {{ ref("finance_days") }} 
USING(date_date)


