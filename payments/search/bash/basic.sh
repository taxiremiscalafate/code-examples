curl -G -X GET \
-H "accept: application/json" \
"https://api.mercadopago.com/collections/search" \
-d "access_token=ACCESS_TOKEN" \
-d "status=approved" \
-d "offset=0" \
-d "limit=10"