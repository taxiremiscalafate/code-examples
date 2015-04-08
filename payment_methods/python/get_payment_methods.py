import mercadopago

mp = mercadopago.MP("ACCESS_TOKEN")

payment_methods = mp.get ("/v1/payment_methods")

print payment_methods
