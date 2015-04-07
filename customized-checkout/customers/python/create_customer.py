import mercadopago

mp = mercadopago.MP("ACCESS_TOKEN")

customer = mp.post ("/v1/customers", {"email": "test@test.com"})

print customer
