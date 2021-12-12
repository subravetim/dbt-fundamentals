with cust_orders as (

    select * from {{ ref('stg_orders') }}
),

payments as (

    select * from {{ ref('stg_payments')}}

),

final as (

    select
        cust_orders.order_id,
        cust_orders.customer_id,
        payments.amount

    from cust_orders

    left join payments using (order_id)

)

select * from final