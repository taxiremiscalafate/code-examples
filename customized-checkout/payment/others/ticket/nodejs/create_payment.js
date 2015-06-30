var MP = require ("mercadopago");

var mp = new MP ("ACCESS_TOKEN");

var doPayment = mp.post ("/v1/payments",
	{
		"transaction_amount": 100,
		"description": "Title of what you are paying for",
		"payment_method_id": "TICKET_PAYMENT_METHOD_ID",
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
