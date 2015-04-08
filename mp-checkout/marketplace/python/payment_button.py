import os, sys
import mercadopago
import json

def index(req, **kwargs):
	preference = {
		"items": [
			{
				"title": "Item title",
				"description": "Description",
				"quantity": 1,
				"unit_price": 50,
				"currency_id": "CURRENCY_ID",
				"picture_url": "https://www.mercadopago.com/org-img/MP3/home/logomp3.gif"
			}
		],
		"marketplace_fee": 2.29 # fee to collect
	}
	mp = mercadopago.MP("SELLER_AT") # seller access_token

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