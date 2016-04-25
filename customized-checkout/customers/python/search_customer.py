import mercadopago

mp = mercadopago.MP("ACCESS_TOKEN")

filters = {
    "email": "your.payer@email"
}

customer = mp.get ("/v1/customers/search", filters)

print customer
