require 'mercadopago.rb'

$mp = MercadoPago.new('USER_AT')

paymentData = Hash[
		"transaction_amount" => 100,
		"token" => "ff8080814c11e237014c1ff593b57b4d",
		"description" => "Title of what you are paying for",
		"installments" => 1,
		"payer" => Hash[
			"id" => "12345678"
		],
		"payment_method_id" => "visa",
		"application_fee" => 2.56
	]

payment = $mp.post("/v1/payments", paymentData);

puts payment
