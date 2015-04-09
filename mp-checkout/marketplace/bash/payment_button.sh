curl -X POST \
-H 'accept: application/json' \
-H 'content-type: application/json' \
'https://api.mercadolibre.com/checkout/preferences?access_token=SELLER_AT' \
-d '{
    "items": [
        {
            "title": "Item title",
            "description": "Description",
            "quantity": 1,
            "unit_price": 50,
            "currency_id": "CURRENCY_ID",
            "picture_url": "https://www.mercadopago.com/org-img/MP3/home/logomp3.gif"
        }
    ],
    "marketplace_fee": 2.29
}'