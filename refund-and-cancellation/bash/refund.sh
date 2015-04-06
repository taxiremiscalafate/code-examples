curl -X PUT \
-H "Content-Type: application/json" \
'https://api.mercadopago.com/collections/:ID?access_token=ACCESS_TOKEN' \
-d '{"status":"refunded"}'