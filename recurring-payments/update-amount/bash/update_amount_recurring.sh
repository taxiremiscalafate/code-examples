curl -X PUT \
-H "Content-Type: application/json" \
'https://api.mercadopago.com/preapproval/:ID?access_token=ACCESS_TOKEN' \
-d '{"auto_recurring": {"transaction_amount": NEW_AMOUNT}}'