select id as user_id,
        email,
        username,
        name as full_name,
        address,
        phone
from {{source('fakestoreapi', 'users')}}