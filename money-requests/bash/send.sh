curl -X POST \
-H "Content-Type: application/json" \
'https://api.mercadopago.com/money_requests?access_token=ACCESS_TOKEN' \
-d '{
    "currency_id" : "CURRENCY_ID",
    "payer_email" : "payer@email.com",
    "amount" : 2.1,
    "description" : "Description",
    "concept_type" : "off_platform"
}'