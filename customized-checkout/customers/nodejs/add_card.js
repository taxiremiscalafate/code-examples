var MP = require ("mercadopago");

var mp = new MP ("ACCESS_TOKEN");

var customer = {
    "email": "your.payer@email"
}

saved_customer = mp.get ("/v1/customers/search", customer);

saved_customer.then (function (customer) {
		var addCard = mp.post ("/v1/customers/"+customer.response.results[0].id+"/cards", {"token": "ff8080814c11e237014c1ff593b57b4d"});

		addCard.then (
			function (cardData) {
				console.log (cardData);
			},
			function (error) {
				console.log (error);
			});
	});
