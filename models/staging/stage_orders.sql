 select
 -- field take from orders table
  o.ORDERID,o.ORDERDATE,o.SHIPDATE,o.SHIPMODE,o.CUSTOMERID,o.PRODUCTID,o.ORDERSELLINGPRICE-o.ORDERCOSTPRICE as order_profit,
   -- field take from products table
 p.productname,p.category,p.subcategory,
  -- field take from customers table
 c.customername,c.segment,c.country

 from {{ ref('orders') }} as o
left join 
{{ ref('product') }} as p
on o.PRODUCTID=p.PRODUCTID
left join 
{{ ref('customer') }} as c
on o.customerid=c.customerid