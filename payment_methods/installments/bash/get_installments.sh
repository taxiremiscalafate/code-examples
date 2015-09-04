curl -G -X GET \
-H "accept: application/json" \
"https://api.mercadopago.com/v1/payment_methods/installments" \
-d "public_key=PUBLIC_KEY" \
-d "amount=100" \
-d "payment_method_id=visa"