curl -X GET \
     -H 'accept: application/json' \
     'https://api.mercadopago.com/v1/customers/search' \
     -d 'access_token=ACCESS_TOKEN' \
     -d 'email=your.payer@email'