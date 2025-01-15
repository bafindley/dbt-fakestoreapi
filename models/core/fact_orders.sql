WITH order_details AS (
    SELECT c.cart_id,
            c.user_id,
            c.order_date,
            p.product_id,
            c.quantity,
            c.price * c.quantity AS line_item_total
    FROM {{ ref('dim_users')}} u 
    JOIN {{ ref('stg_carts')}} c 
        ON u.user_id = c.user_id 
    JOIN {{ ref('dim_products')}} p 
        ON c.product_id = p.product_id
)

SELECT *
FROM order_details