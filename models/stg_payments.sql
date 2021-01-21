select 
  id as payment_id, 
  orderid as order_id, 
  paymentmethod as payment_method, 
  status as payment_status, 
  amount/100.0 as amount_dollars, 
  created
from raw.stripe.payment