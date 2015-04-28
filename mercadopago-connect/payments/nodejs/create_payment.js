var MP = require ("mercadopago");

var mp = new MP ("USER_AT");

var doPayment = mp.post ("/v1/payments",
	{
		"transaction_amount": 100,
		"token": "ff8080814c11e237014c1ff593b57b4d",
		"description": "Title of what you are paying for",
		"installments": 1,
		"payer": {
			"id": "12345678"
		},
		"payment_method_id": "visa",
		"application_fee": 2.56
	});

doPayment.then (
	function (payment) {
		console.log (payment);
	},
	function (error){
		console.log (error);
	});
