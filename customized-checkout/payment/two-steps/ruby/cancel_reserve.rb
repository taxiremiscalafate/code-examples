require 'mercadopago.rb'

$mp = MercadoPago.new('ACCESS_TOKEN')

paymentData = Hash[
		"status" => "cancelled"
	]

payment = $mp.put("/v1/payments/PAYMENT_ID", paymentData);

puts payment