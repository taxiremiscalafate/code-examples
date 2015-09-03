curl -X GET \
        -H 'accept: application/json' \
        'https://api.mercadopago.com/v1/customers/search?access_token=ACCESS_TOKEN' \
        -d 'email=your.payer@email'