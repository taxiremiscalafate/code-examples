import mercadopago
import json

mp = mercadopago.MP("ACCESS_TOKEN")

payment = mp.put("/v1/payments/PAYMENT_ID", {
        "capture": True
    });

print(json.dumps(payment, indent=4))