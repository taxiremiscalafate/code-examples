require 'mercadopago.rb'

$mp = MercadoPago.new('ACCESS_TOKEN')

paymentData = Hash[
		"transaction_amount" => 100,
		"description" => "Title of what you are paying for",
		"payment_method_id" => "TICKET_PAYMENT_METHOD_ID",
		"payer" => Hash[
			"email" => "test_user_19653727@testuser.com"
		]
	]

payment = $mp.post("/v1/payments", paymentData);

puts payment
