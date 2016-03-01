curl -X PUT \
        -H 'accept: application/json' \
        -H 'content-type: application/json' \
        'https://api.mercadopago.com/v1/payments/PAYMENT_ID?access_token=ACCESS_TOKEN' \
        -d '{
                "transaction_amount": 75,
                "capture": true
        }'