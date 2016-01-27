import mercadopago

mp = mercadopago.MP("CLIENT_ID", "CLIENT_SECRET")

mp.update_preapproval_payment(":ID", {"status": "paused"})