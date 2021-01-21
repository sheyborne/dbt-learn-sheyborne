select 
  o.order_id, 
  o.customer_id, 
  o.order_date, 
  o.order_status, 
  sum(p.amount_dollars) as amount_usd 
from {{ref('stg_orders')}} o
left join {{ref('stg_payments')}} p
on o.order_id = p.order_id 
where p.payment_status != 'fail'
group by 1,2,3,4