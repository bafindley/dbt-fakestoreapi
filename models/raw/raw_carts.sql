select id AS cart_id,
        userID as user_id,
        date as order_date,
        products
from {{source('fakestoreapi', 'carts')}}