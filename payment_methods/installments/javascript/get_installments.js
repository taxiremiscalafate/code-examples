Mercadopago.setPublishableKey("PUBLIC_KEY");

Mercadopago.getInstallments({
		"payment_method_id":"visa"
	}, function (status, response){
		console.log(response);
	});