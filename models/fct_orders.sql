with customers as (
    select * from {{ ref('customers') }}
),
orders as (
    select * from {{ ref('orders') }}
)
select o.order_id, o.customer_id, o.Amount, c.lifetime_value from orders as o
left join
(select customer_id, sum(amount) as lifetime_value from orders
group by customer_id) c
using (customer_id)