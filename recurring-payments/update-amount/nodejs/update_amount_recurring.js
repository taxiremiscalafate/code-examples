var MP = require ("mercadopago");

var mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

mp.put ("/preapproval/:ID", {"auto_recurring": {"transaction_amount": NEW_AMOUNT}})
	.then (function (preapproval) {
		console.log (preapproval);
	});
});