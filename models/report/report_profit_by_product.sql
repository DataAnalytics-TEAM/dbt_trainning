select productid,productname,category,subcategory,sum(order_profit) as product_profit
 from {{ ref('stage_orders') }}
 group by productid,productname,category,subcategory