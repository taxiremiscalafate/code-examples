curl -X POST \
-H "accept: application/json" \
-H "content-type: application/json" \
"https://api.mercadopago.com/users/USER_ID/differential_pricing?access_token=ACCESS_TOKEN" \
-d '{
        "deductions_by_payment_method": [
                {
                        "collector": {
                                "financing_rate": 100
                        },
                        "start_date": "2013-02-17T23:00:01.000-04:00",
                        "end_date": "2015-04-28T22:59:59.000-04:00",
                        "installments": [
                                3,
                                6
                        ],
                        "payment_method_id": "amex"
                }
        ]
}'