curl -X POST \
        -H 'accept: application/json' \
        -H 'content-type: application/json' \
        'https://api.mercadopago.com/v1/customers/[CUSTOMER_ID]/cards?access_token=ACCESS_TOKEN' \
        -d '{"token": "ff8080814c11e237014c1ff593b57b4d"}'