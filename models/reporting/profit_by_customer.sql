select 
    CUSTOMERNAME,
    SEGMENT,
    COUNTRY,
    sum(ORDERPROFIT) as profit
from {{ ref('stg_orders')}}
group by 1, 2, 3