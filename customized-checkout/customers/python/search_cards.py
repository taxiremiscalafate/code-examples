import mercadopago

mp = mercadopago.MP("ACCESS_TOKEN")

cards = mp.get ("/v1/customers/[CUSTOMER_ID]/cards")

print cards["response"]
