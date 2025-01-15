SELECT user_id,
        email,
        username,
        name.firstname as first_name,
        name.lastname as last_name,
        address.city as city,
        phone
FROM {{ ref('raw_users')}}