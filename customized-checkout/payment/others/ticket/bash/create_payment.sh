curl -X POST \
	-H 'accept: application/json' \
	-H 'content-type: application/json' \
	'https://api.mercadopago.com/v1/payments?access_token=ACCESS_TOKEN' \
	-d '{
		"transaction_amount": 100,
		"description": "Title of what you are paying for",
		"payment_method_id": "TICKET_PAYMENT_METHOD_ID",
		"payer": {
			"email": "test_user_19653727@testuser.com"
		}
	}'
