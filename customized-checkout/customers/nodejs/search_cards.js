var MP = require ("mercadopago");

var mp = new MP ("ACCESS_TOKEN");

var searchCards = mp.get ("/v1/customers/[CUSTOMER_ID]/cards");

searchCards.then (function (cards) {
		console.log (cards);
	},
	function (error) {
		console.log (error);
	});
