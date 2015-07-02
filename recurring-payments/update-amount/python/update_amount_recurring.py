import mercadopago

mp = mercadopago.MP("CLIENT_ID", "CLIENT_SECRET")

mp.update_preapproval_payment(":ID", {"auto_recurring": {"transaction_amount": NEW_AMOUNT}})