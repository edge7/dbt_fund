with stg_for_fact_payment as (
    Select orderid as order_id,
            amount
        from raw.stripe.payment
    WHERE status = 'success'

)

Select * from stg_for_fact_payment