import mercadopago
import json

mp = mercadopago.MP("ACCESS_TOKEN")

payment = mp.post("/v1/payments", {
        "transaction_amount": 100,
        "token": "ff8080814c11e237014c1ff593b57b4d",
        "description": "Title of what you are paying for",
        "installments": 1,
        "payment_method_id": "visa",
        "payer": {
            "email": "test_user_19653727@testuser.com"
        },
        "capture": False
    });

print(json.dumps(payment, indent=4))