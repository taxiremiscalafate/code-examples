curl -G -X GET \
-H "accept: application/json" \
"https://api.mercadopago.com/mercadopago_account/movements/search" \
-d "access_token=ACCESS_TOKEN" \
-d "type=movement_type" \
-d "detail=movement_detail"