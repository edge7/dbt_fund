with stg_orders as(
    Select 
        id as order_id,
        user_id
    FROM
        raw.jaffle_shop.orders
    WHERE status = 'completed'
)

Select * from stg_orders
