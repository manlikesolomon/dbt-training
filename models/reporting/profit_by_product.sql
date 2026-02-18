select 
    PRODUCTID,
    PRODUCTNAME,
    CATEGORY,
    SUBCATEGORY,
    sum(ORDERPROFIT) as profit
from {{ ref('stg_orders')}}
group by 1, 2, 3, 4