SELECT o.product_id,
        p.product_name,
        o.order_date,
        DATE_TRUNC('month', o.order_date) AS order_month_key,
        SUM(o.quantity) AS total_units_sold,
        SUM(o.line_item_total) AS total_revenue,
        COUNT(DISTINCT o.cart_id) AS total_carts,
        COUNT(DISTINCT o.user_id) AS total_customers
FROM {{ ref('fact_orders')}} o 
JOIN {{ ref('dim_products')}} p 
    ON o.product_id = p.product_id
GROUP BY 1,2
