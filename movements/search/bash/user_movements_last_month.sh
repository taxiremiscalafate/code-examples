curl -G -X GET \
-H "accept: application/json" \
"https://api.mercadopago.com/mercadopago_account/movements/search" \
-d "access_token=ACCESS_TOKEN" \
-d "user_id=user_id" \
-d "range=date_created" \
-d "begin_date=NOW-1MONTH" \
-d "end_date=NOW"