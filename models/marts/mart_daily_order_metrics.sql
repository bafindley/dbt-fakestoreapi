SELECT order_date, 
        DATE_TRUNC('month', order_date) AS order_month_key,
        COUNT(DISTINCT cart_id) AS total_carts,
        COUNT(DISTINCT user_id) AS total_customers,
        SUM(quantity) AS total_items_sold,
        SUM(line_item_total) AS total_revenue,
        AVG(line_item_total) AS avg_order_value
FROM {{ ref('fact_orders')}}
GROUP BY 1,2
