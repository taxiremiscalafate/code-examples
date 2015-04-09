var MP = require ("mercadopago");

var mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

var doPayment = mp.post ("/v1/payments",
	{
		"transaction_amount": 100,
		"description": "Title of what you are paying for",
		"payment_method_id": "redlink",
		"payer": {
			"email": "test_user_19653727@testuser.com"
		}
	});

doPayment.then (
	function (payment) {
		console.log (payment);
	},
	function (error){
		console.log (error);
	});
