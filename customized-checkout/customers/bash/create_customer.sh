curl -X POST \
        -H 'accept: application/json' \
        -H 'content-type: application/json' \
        'https://api.mercadopago.com/v1/customers?access_token=ACCESS_TOKEN' \
        -d '{"email": "test@test.com"}'