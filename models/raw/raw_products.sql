select id as product_id,
        title as product_name,
        description,
        category,
        image,
        price
from {{source('fakestoreapi', 'products')}}