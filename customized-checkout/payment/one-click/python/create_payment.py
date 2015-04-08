import mercadopago
import json

mp = mercadopago.MP("CLIENT_ID", "CLIENT_SECRET")

payment = mp.post("/v1/payments", {
        "transaction_amount": 100,
        "token": "ff8080814c11e237014c1ff593b57b4d",
        "description": "Title of what you are paying for",
        "installments": 1,
        "payment_method_id": "visa",
        "payer": {
            "id": 178096989,
            "type": "customer"
        }
    });

print(json.dumps(payment, indent=4))
