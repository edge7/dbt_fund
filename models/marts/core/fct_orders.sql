with orders as (
    Select * from {{ref  ('stg_for_fact_orders') }}
),

payment as (
    Select * from {{ ref ('stg_for_fact_payment')}}
)

Select 
      o.order_id,
      o.user_id,
      p.amount
from
    orders o join payment p 
     on o.order_id = p.order_id 
    
