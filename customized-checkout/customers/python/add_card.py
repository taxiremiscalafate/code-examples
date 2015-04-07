import mercadopago

mp = mercadopago.MP("ACCESS_TOKEN")

card = mp.post ("/v1/customers/[CUSTOMER_ID]/cards", {"token": "ff8080814c11e237014c1ff593b57b4d"})

print card
