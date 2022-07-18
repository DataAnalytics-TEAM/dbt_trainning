select customerid,segment,country,sum(order_profit) as customer_profit
 from {{ ref('stage_orders') }}
 group by customerid,segment,country