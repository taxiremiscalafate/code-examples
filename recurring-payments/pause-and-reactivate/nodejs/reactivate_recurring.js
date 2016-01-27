var MP = require ("mercadopago");

var mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

mp.put ("/preapproval/:ID", {"status": "authorized"})
	.then (function (preapproval) {
		console.log (preapproval);
	});
});