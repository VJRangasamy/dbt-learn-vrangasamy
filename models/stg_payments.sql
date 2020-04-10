select 
    ID as payment_ID,
    "orderID" as order_ID, 
    Amount, 
    Created
from raw.stripe.payment