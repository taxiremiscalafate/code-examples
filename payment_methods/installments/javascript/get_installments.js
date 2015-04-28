Mercadopago.setPublishableKey("PUBLIC_KEY");

Mercadopago.getInstallments({
		"payment_method_id":"visa",
		"amount": 100
	}, function (status, response){
		console.log(response);
	});
