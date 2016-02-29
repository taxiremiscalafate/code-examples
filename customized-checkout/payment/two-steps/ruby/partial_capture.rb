require 'mercadopago.rb'

$mp = MercadoPago.new('ACCESS_TOKEN')

paymentData = Hash[
		"transaction_amount" => 75,
		"capture" => true
	]

payment = $mp.put("/v1/payments/PAYMENT_ID", paymentData);

puts payment