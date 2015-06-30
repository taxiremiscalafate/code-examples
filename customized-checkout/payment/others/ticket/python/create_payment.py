import mercadopago
import json

mp = mercadopago.MP("ACCESS_TOKEN")

payment = mp.post("/v1/payments", {
        "transaction_amount": 100,
        "description": "Title of what you are paying for",
        "payment_method_id": "TICKET_PAYMENT_METHOD_ID",
        "payer": {
            "email": "test_user_19653727@testuser.com"
        }
    });

print(json.dumps(payment, indent=4))
