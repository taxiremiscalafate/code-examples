curl -X POST \
     -H 'accept: application/json' \
     -H 'content-type: application/x-www-form-urlencoded' \
     'https://api.mercadopago.com/oauth/token' \
     -d 'grant_type=client_credentials' \
     -d 'client_id=CLIENT_ID' \
     -d 'client_secret=CLIENT_SECRET'