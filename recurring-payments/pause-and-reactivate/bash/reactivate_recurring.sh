curl -X PUT \
-H "Content-Type: application/json" \
'https://api.mercadopago.com/preapproval/:ID?access_token=ACCESS_TOKEN' \
-d '{"status": "authorized"}'