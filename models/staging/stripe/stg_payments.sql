select 
    orderid as order_id,
    PaymentMethod as payment_method,
    -- amount is stored in cents, convert it to dollars
    amount / 100 as amount,
    created as created_at

from {{ source('stripe', 'payment')}}