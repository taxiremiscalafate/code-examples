var MP = require ("mercadopago");

var mp = new MP ("ACCESS_TOKEN");

var doPayment = mp.post ("/v1/payments",
	{
		"transaction_amount": 100,
		"token": "ff8080814c11e237014c1ff593b57b4d",
		"description": "Title of what you are paying for",
		"installments": 1,
		"payer": {
			"id": 178096989,
			"type": "customer"
		}
	});

doPayment.then (
	function (payment) {
		console.log (payment);
	},
	function (error){
		console.log (error);
	});
