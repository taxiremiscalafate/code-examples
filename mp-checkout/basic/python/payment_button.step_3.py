import os, sys
import mercadopago
import json

def index(req, **kwargs):
	preference = {
		"items": [
			{
				"title": "Multicolor kite",
				"quantity": 1,
				"currency_id": "CURRENCY_ID", # Available currencies at: https://api.mercadopago.com/currencies
				"unit_price": 10.0
			}
		]
	}
	mp = mercadopago.MP("CLIENT_ID", "CLIENT_SECRET")

	preferenceResult = mp.create_preference(preference)

	url = preferenceResult["response"]["init_point"]

	output = """
	<!doctype html>
	<html>
		<head>
			<title>Pay</title>
		</head>
		<body>
			<a href="{url}">Pay</a>
		</body>
	</html>
	""".format (url=url)

	return output