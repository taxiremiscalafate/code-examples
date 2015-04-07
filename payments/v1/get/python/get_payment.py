import mercadopago

mp = mercadopago.MP("ACCESS_TOKEN")

payment = mp.get ("/v1/payments/[ID]")

print payment
