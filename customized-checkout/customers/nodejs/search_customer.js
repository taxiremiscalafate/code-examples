var MP = require ("mercadopago");

var mp = new MP ("ACCESS_TOKEN");

var filters = {
    "email": "your.payer@email"
}

var customer = mp.get ("/v1/customers/search", filters);

customer.then (function (customer) {
		console.log (customer);
	},
	function (error) {
		console.log (error);
	});
