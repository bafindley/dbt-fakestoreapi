WITH cart_data AS (
    SELECT cart_id,
            user_id,
            order_date,
            product.productId AS product_id,
            product.quantity AS quantity
    FROM {{ ref('raw_carts')}},
    UNNEST(products) AS product
)

SELECT *
FROM cart_data