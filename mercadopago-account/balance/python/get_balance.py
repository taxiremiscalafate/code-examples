import mercadopago

mp = mercadopago.MP("CLIENT_ID", "CLIENT_SECRET")

balance = mp.get ("/users/USER_ID/mercadopago_account/balance")

print balance
